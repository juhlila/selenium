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
      class Performance

        def initialize(devtools)
          @devtools = devtools
        end

        def disable
          @devtools.send('Performance.disable')
        end

        def enable
          @devtools.send('Performance.enable')
        end

        def set_time_domain(time_domain:)
          @devtools.send('Performance.setTimeDomain',
                         timeDomain: time_domain)
        end

        def get_metrics
          @devtools.send('Performance.getMetrics')
        end

      end # Performance
    end # DevTools
  end # WebDriver
end #Selenium
