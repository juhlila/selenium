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
      class DOMSnapshot

        def initialize(devtools)
          @devtools = devtools
        end

        def disable
          @devtools.send('DOMSnapshot.disable')
        end

        def enable
          @devtools.send('DOMSnapshot.enable')
        end

        def get_snapshot(computed_style_whitelist:, include_event_listeners:, include_paint_order:, include_user_agent_shadow_tree:)
          @devtools.send('DOMSnapshot.getSnapshot',
                         computedStyleWhitelist: computed_style_whitelist,
                         includeEventListeners: include_event_listeners,
                         includePaintOrder: include_paint_order,
                         includeUserAgentShadowTree: include_user_agent_shadow_tree)
        end

        def capture_snapshot(computed_styles:, include_paint_order:, include_domrects:)
          @devtools.send('DOMSnapshot.captureSnapshot',
                         computedStyles: computed_styles,
                         includePaintOrder: include_paint_order,
                         includeDOMRects: include_domrects)
        end

      end # DOMSnapshot
    end # DevTools
  end # WebDriver
end #Selenium
