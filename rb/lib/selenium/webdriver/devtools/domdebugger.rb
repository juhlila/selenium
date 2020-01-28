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

module Selenium
  module WebDriver
    class DevTools
      class DOMDebugger

        def initialize(devtools)
          @devtools = devtools
        end

        def get_event_listeners(object_id:, depth:, pierce:)
          @devtools.send('DOMDebugger.getEventListeners',
                         objectId: object_id,
                         depth: depth,
                         pierce: pierce)
        end

        def remove_dombreakpoint(node_id:, type:)
          @devtools.send('DOMDebugger.removeDOMBreakpoint',
                         nodeId: node_id,
                         type: type)
        end

        def remove_event_listener_breakpoint(event_name:, target_name:)
          @devtools.send('DOMDebugger.removeEventListenerBreakpoint',
                         eventName: event_name,
                         targetName: target_name)
        end

        def remove_instrumentation_breakpoint(event_name:)
          @devtools.send('DOMDebugger.removeInstrumentationBreakpoint',
                         eventName: event_name)
        end

        def remove_xhrbreakpoint(url:)
          @devtools.send('DOMDebugger.removeXHRBreakpoint',
                         url: url)
        end

        def set_dombreakpoint(node_id:, type:)
          @devtools.send('DOMDebugger.setDOMBreakpoint',
                         nodeId: node_id,
                         type: type)
        end

        def set_event_listener_breakpoint(event_name:, target_name:)
          @devtools.send('DOMDebugger.setEventListenerBreakpoint',
                         eventName: event_name,
                         targetName: target_name)
        end

        def set_instrumentation_breakpoint(event_name:)
          @devtools.send('DOMDebugger.setInstrumentationBreakpoint',
                         eventName: event_name)
        end

        def set_xhrbreakpoint(url:)
          @devtools.send('DOMDebugger.setXHRBreakpoint',
                         url: url)
        end

      end # DOMDebugger
    end # DevTools
  end # WebDriver
end #Selenium
