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
      class Emulation

        def initialize(devtools)
          @devtools = devtools
        end

        def can_emulate
          @devtools.send('Emulation.canEmulate')
        end

        def clear_device_metrics_override
          @devtools.send('Emulation.clearDeviceMetricsOverride')
        end

        def clear_geolocation_override
          @devtools.send('Emulation.clearGeolocationOverride')
        end

        def reset_page_scale_factor
          @devtools.send('Emulation.resetPageScaleFactor')
        end

        def set_focus_emulation_enabled(enabled:)
          @devtools.send('Emulation.setFocusEmulationEnabled',
                         enabled: enabled)
        end

        def set_cputhrottling_rate(rate:)
          @devtools.send('Emulation.setCPUThrottlingRate',
                         rate: rate)
        end

        def set_default_background_color_override(color:)
          @devtools.send('Emulation.setDefaultBackgroundColorOverride',
                         color: color)
        end

        def set_device_metrics_override(width:, height:, device_scale_factor:, mobile:, scale:, screen_width:, screen_height:, position_x:, position_y:, dont_set_visible_size:, screen_orientation:, viewport:)
          @devtools.send('Emulation.setDeviceMetricsOverride',
                         width: width,
                         height: height,
                         deviceScaleFactor: device_scale_factor,
                         mobile: mobile,
                         scale: scale,
                         screenWidth: screen_width,
                         screenHeight: screen_height,
                         positionX: position_x,
                         positionY: position_y,
                         dontSetVisibleSize: dont_set_visible_size,
                         screenOrientation: screen_orientation,
                         viewport: viewport)
        end

        def set_scrollbars_hidden(hidden:)
          @devtools.send('Emulation.setScrollbarsHidden',
                         hidden: hidden)
        end

        def set_document_cookie_disabled(disabled:)
          @devtools.send('Emulation.setDocumentCookieDisabled',
                         disabled: disabled)
        end

        def set_emit_touch_events_for_mouse(enabled:, configuration:)
          @devtools.send('Emulation.setEmitTouchEventsForMouse',
                         enabled: enabled,
                         configuration: configuration)
        end

        def set_emulated_media(media:)
          @devtools.send('Emulation.setEmulatedMedia',
                         media: media)
        end

        def set_geolocation_override(latitude:, longitude:, accuracy:)
          @devtools.send('Emulation.setGeolocationOverride',
                         latitude: latitude,
                         longitude: longitude,
                         accuracy: accuracy)
        end

        def set_navigator_overrides(platform:)
          @devtools.send('Emulation.setNavigatorOverrides',
                         platform: platform)
        end

        def set_page_scale_factor(page_scale_factor:)
          @devtools.send('Emulation.setPageScaleFactor',
                         pageScaleFactor: page_scale_factor)
        end

        def set_script_execution_disabled(value:)
          @devtools.send('Emulation.setScriptExecutionDisabled',
                         value: value)
        end

        def set_touch_emulation_enabled(enabled:, max_touch_points:)
          @devtools.send('Emulation.setTouchEmulationEnabled',
                         enabled: enabled,
                         maxTouchPoints: max_touch_points)
        end

        def set_virtual_time_policy(policy:, budget:, max_virtual_time_task_starvation_count:, wait_for_navigation:, initial_virtual_time:)
          @devtools.send('Emulation.setVirtualTimePolicy',
                         policy: policy,
                         budget: budget,
                         maxVirtualTimeTaskStarvationCount: max_virtual_time_task_starvation_count,
                         waitForNavigation: wait_for_navigation,
                         initialVirtualTime: initial_virtual_time)
        end

        def set_timezone_override(timezone_id:)
          @devtools.send('Emulation.setTimezoneOverride',
                         timezoneId: timezone_id)
        end

        def set_visible_size(width:, height:)
          @devtools.send('Emulation.setVisibleSize',
                         width: width,
                         height: height)
        end

        def set_user_agent_override(user_agent:, accept_language:, platform:)
          @devtools.send('Emulation.setUserAgentOverride',
                         userAgent: user_agent,
                         acceptLanguage: accept_language,
                         platform: platform)
        end

      end # Emulation
    end # DevTools
  end # WebDriver
end #Selenium
