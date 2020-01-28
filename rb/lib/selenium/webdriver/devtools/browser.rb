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
      class Browser

        def initialize(devtools)
          @devtools = devtools
        end

        def set_permission(origin:, permission:, setting:, browser_context_id:)
          @devtools.send('Browser.setPermission',
                         origin: origin,
                         permission: permission,
                         setting: setting,
                         browserContextId: browser_context_id)
        end

        def grant_permissions(origin:, permissions:, browser_context_id:)
          @devtools.send('Browser.grantPermissions',
                         origin: origin,
                         permissions: permissions,
                         browserContextId: browser_context_id)
        end

        def reset_permissions(browser_context_id:)
          @devtools.send('Browser.resetPermissions',
                         browserContextId: browser_context_id)
        end

        def close
          @devtools.send('Browser.close')
        end

        def crash
          @devtools.send('Browser.crash')
        end

        def crash_gpu_process
          @devtools.send('Browser.crashGpuProcess')
        end

        def get_version
          @devtools.send('Browser.getVersion')
        end

        def get_browser_command_line
          @devtools.send('Browser.getBrowserCommandLine')
        end

        def get_histograms(query:, delta:)
          @devtools.send('Browser.getHistograms',
                         query: query,
                         delta: delta)
        end

        def get_histogram(name:, delta:)
          @devtools.send('Browser.getHistogram',
                         name: name,
                         delta: delta)
        end

        def get_window_bounds(window_id:)
          @devtools.send('Browser.getWindowBounds',
                         windowId: window_id)
        end

        def get_window_for_target(target_id:)
          @devtools.send('Browser.getWindowForTarget',
                         targetId: target_id)
        end

        def set_window_bounds(window_id:, bounds:)
          @devtools.send('Browser.setWindowBounds',
                         windowId: window_id,
                         bounds: bounds)
        end

        def set_dock_tile(badge_label:, image:)
          @devtools.send('Browser.setDockTile',
                         badgeLabel: badge_label,
                         image: image)
        end

      end # Browser
    end # DevTools
  end # WebDriver
end #Selenium
