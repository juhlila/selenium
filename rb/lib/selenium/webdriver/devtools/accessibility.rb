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
      class Accessibility

        def initialize(devtools)
          @devtools = devtools
        end

        def disable
          @devtools.send('Accessibility.disable')
        end

        def enable
          @devtools.send('Accessibility.enable')
        end

        def get_partial_axtree(node_id:, backend_node_id:, object_id:, fetch_relatives:)
          @devtools.send('Accessibility.getPartialAXTree',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id,
                         fetchRelatives: fetch_relatives)
        end

        def get_full_axtree
          @devtools.send('Accessibility.getFullAXTree')
        end

      end # Accessibility
    end # DevTools
  end # WebDriver
end #Selenium
