# frozen_string_literal: true

# Licensed to the Software Freedom Conservancy (SFC) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The SFC licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

require 'selenium/webdriver/devtools/page'
require 'selenium/webdriver/devtools/target'

module Selenium
  module WebDriver
    class DevTools

      def initialize(url)
        @messages = []
        @uri = URI("http://#{url}")

        process_handshake
        attach_socket_listener

        target.attach_to_target(target_id: page_target['id'])
        target.set_auto_attach(auto_attach: true, wait_for_debugger_on_start: false)
      end

      def callbacks
        @callbacks ||= Hash.new { |callbacks, event| callbacks[event] = [] }
      end

      def page
        @page ||= Page.new(self)
      end

      def target
        @target ||= Target.new(self)
      end

      def send_cmd(method, **params)
        id = next_id
        data = JSON.generate(id: id, method: method, params: params)

        out_frame = WebSocket::Frame::Outgoing::Client.new(version: ws.version, data: data, type: 'text')
        socket.write(out_frame.to_s)

        wait.until do
          @messages.find { |message| message['id'] == id }
        end
      end

      private

      def process_handshake
        socket.print(ws.to_s)
        ws << socket.readpartial(1024)
      end

      def attach_socket_listener
        socket_listener = Thread.new do
          loop do
            incoming_frame << socket.readpartial(1024)

            while frame = incoming_frame.next
              message = JSON.parse(frame.to_s)
              @messages << message

              callbacks[message['method']].each do |callback|
                callback.call(message['params'])
              end
            end
          end
        end
        socket_listener.abort_on_exception = true
      end

      def incoming_frame
        @incoming_frame ||= WebSocket::Frame::Incoming::Client.new(version: ws.version)
      end

      def wait
        @wait ||= Wait.new(timeout: 10, interval: 0.1)
      end

      def socket
        @socket ||= TCPSocket.new(ws.host, ws.port)
      end

      def ws
        @ws ||= WebSocket::Handshake::Client.new(url: page_target['webSocketDebuggerUrl'])
      end

      def page_target
        @page_target ||= begin
          response = Net::HTTP.get(@uri.hostname, '/json', @uri.port)
          targets = JSON.parse(response)
          targets.find { |target| target['type'] == 'page' }
        end
      end

      def next_id
        @id ||= 0
        @id += 1
      end

    end # DevTools
  end # WebDriver
end # Selenium
