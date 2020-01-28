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
    module Support
      class CDPClientGenerator

        def initialize
          @browser_protocol = JSON.parse(File.read(File.expand_path('cdp/browser_protocol.json', __dir__)))
          @js_protocol = JSON.parse(File.read(File.expand_path('cdp/js_protocol.json', __dir__)))
        end

        def generate
          @browser_protocol['domains'].each do |domain|
            generated_file = File.open(File.expand_path('../devtools', __dir__) << "/#{snake_case(domain['domain'])}.rb", 'w+')
            generated_file.write <<-RUBY
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
      class #{domain['domain']}

        def initialize(devtools)
          @devtools = devtools
        end
            RUBY
            domain['commands'].each do |command|
              generated_file.write """
        def #{snake_case(command['name'])}"""

              if command['parameters']
                generated_file.write('(')
                parameters = command['parameters'].map do |parameter|
                  "#{snake_case(parameter['name'])}:"
                end
                generated_file.write(parameters.join(', '))
                generated_file.write(')')

                generated_file.write """
          @devtools.send('#{domain['domain']}.#{command['name']}',\n"""
                parameters = command['parameters'].map do |parameter|
                  "#{"\s" * 25}#{parameter['name']}: #{snake_case(parameter['name'])}"
                end
                generated_file.write(parameters.join(",\n"))
                generated_file.write(')')
              else
                generated_file.write """
          @devtools.send('#{domain['domain']}.#{command['name']}')"""
              end

              generated_file.write """
        end
"""
            end
            generated_file.write <<-RUBY

      end # #{domain['domain']}
    end # DevTools
  end # WebDriver
end # Selenium
            RUBY
          end
        end

        private

        def snake_case(string)
          string.gsub(/([a-z])([A-Z])/, '\1_\2').downcase
        end

      end
    end
  end
end
