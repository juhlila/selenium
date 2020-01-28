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
      class Page

        def initialize(devtools)
          @devtools = devtools
        end

        def add_script_to_evaluate_on_load(script_source:)
          @devtools.send('Page.addScriptToEvaluateOnLoad',
                         scriptSource: script_source)
        end

        def add_script_to_evaluate_on_new_document(source:, world_name:)
          @devtools.send('Page.addScriptToEvaluateOnNewDocument',
                         source: source,
                         worldName: world_name)
        end

        def bring_to_front
          @devtools.send('Page.bringToFront')
        end

        def capture_screenshot(format:, quality:, clip:, from_surface:)
          @devtools.send('Page.captureScreenshot',
                         format: format,
                         quality: quality,
                         clip: clip,
                         fromSurface: from_surface)
        end

        def capture_snapshot(format:)
          @devtools.send('Page.captureSnapshot',
                         format: format)
        end

        def clear_device_metrics_override
          @devtools.send('Page.clearDeviceMetricsOverride')
        end

        def clear_device_orientation_override
          @devtools.send('Page.clearDeviceOrientationOverride')
        end

        def clear_geolocation_override
          @devtools.send('Page.clearGeolocationOverride')
        end

        def create_isolated_world(frame_id:, world_name:, grant_univeral_access:)
          @devtools.send('Page.createIsolatedWorld',
                         frameId: frame_id,
                         worldName: world_name,
                         grantUniveralAccess: grant_univeral_access)
        end

        def delete_cookie(cookie_name:, url:)
          @devtools.send('Page.deleteCookie',
                         cookieName: cookie_name,
                         url: url)
        end

        def disable
          @devtools.send('Page.disable')
        end

        def enable
          @devtools.send('Page.enable')
        end

        def get_app_manifest
          @devtools.send('Page.getAppManifest')
        end

        def get_installability_errors
          @devtools.send('Page.getInstallabilityErrors')
        end

        def get_cookies
          @devtools.send('Page.getCookies')
        end

        def get_frame_tree
          @devtools.send('Page.getFrameTree')
        end

        def get_layout_metrics
          @devtools.send('Page.getLayoutMetrics')
        end

        def get_navigation_history
          @devtools.send('Page.getNavigationHistory')
        end

        def reset_navigation_history
          @devtools.send('Page.resetNavigationHistory')
        end

        def get_resource_content(frame_id:, url:)
          @devtools.send('Page.getResourceContent',
                         frameId: frame_id,
                         url: url)
        end

        def get_resource_tree
          @devtools.send('Page.getResourceTree')
        end

        def handle_java_script_dialog(accept:, prompt_text:)
          @devtools.send('Page.handleJavaScriptDialog',
                         accept: accept,
                         promptText: prompt_text)
        end

        def navigate(url:, referrer:, transition_type:, frame_id:)
          @devtools.send('Page.navigate',
                         url: url,
                         referrer: referrer,
                         transitionType: transition_type,
                         frameId: frame_id)
        end

        def navigate_to_history_entry(entry_id:)
          @devtools.send('Page.navigateToHistoryEntry',
                         entryId: entry_id)
        end

        def print_to_pdf(landscape:, display_header_footer:, print_background:, scale:, paper_width:, paper_height:, margin_top:, margin_bottom:, margin_left:, margin_right:, page_ranges:, ignore_invalid_page_ranges:, header_template:, footer_template:, prefer_csspage_size:, transfer_mode:)
          @devtools.send('Page.printToPDF',
                         landscape: landscape,
                         displayHeaderFooter: display_header_footer,
                         printBackground: print_background,
                         scale: scale,
                         paperWidth: paper_width,
                         paperHeight: paper_height,
                         marginTop: margin_top,
                         marginBottom: margin_bottom,
                         marginLeft: margin_left,
                         marginRight: margin_right,
                         pageRanges: page_ranges,
                         ignoreInvalidPageRanges: ignore_invalid_page_ranges,
                         headerTemplate: header_template,
                         footerTemplate: footer_template,
                         preferCSSPageSize: prefer_csspage_size,
                         transferMode: transfer_mode)
        end

        def reload(ignore_cache:, script_to_evaluate_on_load:)
          @devtools.send('Page.reload',
                         ignoreCache: ignore_cache,
                         scriptToEvaluateOnLoad: script_to_evaluate_on_load)
        end

        def remove_script_to_evaluate_on_load(identifier:)
          @devtools.send('Page.removeScriptToEvaluateOnLoad',
                         identifier: identifier)
        end

        def remove_script_to_evaluate_on_new_document(identifier:)
          @devtools.send('Page.removeScriptToEvaluateOnNewDocument',
                         identifier: identifier)
        end

        def screencast_frame_ack(session_id:)
          @devtools.send('Page.screencastFrameAck',
                         sessionId: session_id)
        end

        def search_in_resource(frame_id:, url:, query:, case_sensitive:, is_regex:)
          @devtools.send('Page.searchInResource',
                         frameId: frame_id,
                         url: url,
                         query: query,
                         caseSensitive: case_sensitive,
                         isRegex: is_regex)
        end

        def set_ad_blocking_enabled(enabled:)
          @devtools.send('Page.setAdBlockingEnabled',
                         enabled: enabled)
        end

        def set_bypass_csp(enabled:)
          @devtools.send('Page.setBypassCSP',
                         enabled: enabled)
        end

        def set_device_metrics_override(width:, height:, device_scale_factor:, mobile:, scale:, screen_width:, screen_height:, position_x:, position_y:, dont_set_visible_size:, screen_orientation:, viewport:)
          @devtools.send('Page.setDeviceMetricsOverride',
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

        def set_device_orientation_override(alpha:, beta:, gamma:)
          @devtools.send('Page.setDeviceOrientationOverride',
                         alpha: alpha,
                         beta: beta,
                         gamma: gamma)
        end

        def set_font_families(font_families:)
          @devtools.send('Page.setFontFamilies',
                         fontFamilies: font_families)
        end

        def set_font_sizes(font_sizes:)
          @devtools.send('Page.setFontSizes',
                         fontSizes: font_sizes)
        end

        def set_document_content(frame_id:, html:)
          @devtools.send('Page.setDocumentContent',
                         frameId: frame_id,
                         html: html)
        end

        def set_download_behavior(behavior:, download_path:)
          @devtools.send('Page.setDownloadBehavior',
                         behavior: behavior,
                         downloadPath: download_path)
        end

        def set_geolocation_override(latitude:, longitude:, accuracy:)
          @devtools.send('Page.setGeolocationOverride',
                         latitude: latitude,
                         longitude: longitude,
                         accuracy: accuracy)
        end

        def set_lifecycle_events_enabled(enabled:)
          @devtools.send('Page.setLifecycleEventsEnabled',
                         enabled: enabled)
        end

        def set_touch_emulation_enabled(enabled:, configuration:)
          @devtools.send('Page.setTouchEmulationEnabled',
                         enabled: enabled,
                         configuration: configuration)
        end

        def start_screencast(format:, quality:, max_width:, max_height:, every_nth_frame:)
          @devtools.send('Page.startScreencast',
                         format: format,
                         quality: quality,
                         maxWidth: max_width,
                         maxHeight: max_height,
                         everyNthFrame: every_nth_frame)
        end

        def stop_loading
          @devtools.send('Page.stopLoading')
        end

        def crash
          @devtools.send('Page.crash')
        end

        def close
          @devtools.send('Page.close')
        end

        def set_web_lifecycle_state(state:)
          @devtools.send('Page.setWebLifecycleState',
                         state: state)
        end

        def stop_screencast
          @devtools.send('Page.stopScreencast')
        end

        def set_produce_compilation_cache(enabled:)
          @devtools.send('Page.setProduceCompilationCache',
                         enabled: enabled)
        end

        def add_compilation_cache(url:, data:)
          @devtools.send('Page.addCompilationCache',
                         url: url,
                         data: data)
        end

        def clear_compilation_cache
          @devtools.send('Page.clearCompilationCache')
        end

        def generate_test_report(message:, group:)
          @devtools.send('Page.generateTestReport',
                         message: message,
                         group: group)
        end

        def wait_for_debugger
          @devtools.send('Page.waitForDebugger')
        end

        def set_intercept_file_chooser_dialog(enabled:)
          @devtools.send('Page.setInterceptFileChooserDialog',
                         enabled: enabled)
        end

        def handle_file_chooser(action:, files:)
          @devtools.send('Page.handleFileChooser',
                         action: action,
                         files: files)
        end

      end # Page
    end # DevTools
  end # WebDriver
end #Selenium
