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
      class Log

        def initialize(devtools)
          @devtools = devtools
        end

        def clear
          @devtools.send('Log.clear')
        end

        def disable
          @devtools.send('Log.disable')
        end

        def enable
          @devtools.send('Log.enable')
        end

        def start_violations_report(config:)
          @devtools.send('Log.startViolationsReport',
                         config: config)
        end

        def stop_violations_report
          @devtools.send('Log.stopViolationsReport')
        end

      end # Log
    end # DevTools
  end # WebDriver
end #Selenium
