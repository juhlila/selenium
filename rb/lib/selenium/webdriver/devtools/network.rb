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
      class Network

        def initialize(devtools)
          @devtools = devtools
        end

        def can_clear_browser_cache
          @devtools.send('Network.canClearBrowserCache')
        end

        def can_clear_browser_cookies
          @devtools.send('Network.canClearBrowserCookies')
        end

        def can_emulate_network_conditions
          @devtools.send('Network.canEmulateNetworkConditions')
        end

        def clear_browser_cache
          @devtools.send('Network.clearBrowserCache')
        end

        def clear_browser_cookies
          @devtools.send('Network.clearBrowserCookies')
        end

        def continue_intercepted_request(interception_id:, error_reason:, raw_response:, url:, method:, post_data:, headers:, auth_challenge_response:)
          @devtools.send('Network.continueInterceptedRequest',
                         interceptionId: interception_id,
                         errorReason: error_reason,
                         rawResponse: raw_response,
                         url: url,
                         method: method,
                         postData: post_data,
                         headers: headers,
                         authChallengeResponse: auth_challenge_response)
        end

        def delete_cookies(name:, url:, domain:, path:)
          @devtools.send('Network.deleteCookies',
                         name: name,
                         url: url,
                         domain: domain,
                         path: path)
        end

        def disable
          @devtools.send('Network.disable')
        end

        def emulate_network_conditions(offline:, latency:, download_throughput:, upload_throughput:, connection_type:)
          @devtools.send('Network.emulateNetworkConditions',
                         offline: offline,
                         latency: latency,
                         downloadThroughput: download_throughput,
                         uploadThroughput: upload_throughput,
                         connectionType: connection_type)
        end

        def enable(max_total_buffer_size:, max_resource_buffer_size:, max_post_data_size:)
          @devtools.send('Network.enable',
                         maxTotalBufferSize: max_total_buffer_size,
                         maxResourceBufferSize: max_resource_buffer_size,
                         maxPostDataSize: max_post_data_size)
        end

        def get_all_cookies
          @devtools.send('Network.getAllCookies')
        end

        def get_certificate(origin:)
          @devtools.send('Network.getCertificate',
                         origin: origin)
        end

        def get_cookies(urls:)
          @devtools.send('Network.getCookies',
                         urls: urls)
        end

        def get_response_body(request_id:)
          @devtools.send('Network.getResponseBody',
                         requestId: request_id)
        end

        def get_request_post_data(request_id:)
          @devtools.send('Network.getRequestPostData',
                         requestId: request_id)
        end

        def get_response_body_for_interception(interception_id:)
          @devtools.send('Network.getResponseBodyForInterception',
                         interceptionId: interception_id)
        end

        def take_response_body_for_interception_as_stream(interception_id:)
          @devtools.send('Network.takeResponseBodyForInterceptionAsStream',
                         interceptionId: interception_id)
        end

        def replay_xhr(request_id:)
          @devtools.send('Network.replayXHR',
                         requestId: request_id)
        end

        def search_in_response_body(request_id:, query:, case_sensitive:, is_regex:)
          @devtools.send('Network.searchInResponseBody',
                         requestId: request_id,
                         query: query,
                         caseSensitive: case_sensitive,
                         isRegex: is_regex)
        end

        def set_blocked_urls(urls:)
          @devtools.send('Network.setBlockedURLs',
                         urls: urls)
        end

        def set_bypass_service_worker(bypass:)
          @devtools.send('Network.setBypassServiceWorker',
                         bypass: bypass)
        end

        def set_cache_disabled(cache_disabled:)
          @devtools.send('Network.setCacheDisabled',
                         cacheDisabled: cache_disabled)
        end

        def set_cookie(name:, value:, url:, domain:, path:, secure:, http_only:, same_site:, expires:)
          @devtools.send('Network.setCookie',
                         name: name,
                         value: value,
                         url: url,
                         domain: domain,
                         path: path,
                         secure: secure,
                         httpOnly: http_only,
                         sameSite: same_site,
                         expires: expires)
        end

        def set_cookies(cookies:)
          @devtools.send('Network.setCookies',
                         cookies: cookies)
        end

        def set_data_size_limits_for_test(max_total_size:, max_resource_size:)
          @devtools.send('Network.setDataSizeLimitsForTest',
                         maxTotalSize: max_total_size,
                         maxResourceSize: max_resource_size)
        end

        def set_extra_httpheaders(headers:)
          @devtools.send('Network.setExtraHTTPHeaders',
                         headers: headers)
        end

        def set_request_interception(patterns:)
          @devtools.send('Network.setRequestInterception',
                         patterns: patterns)
        end

        def set_user_agent_override(user_agent:, accept_language:, platform:)
          @devtools.send('Network.setUserAgentOverride',
                         userAgent: user_agent,
                         acceptLanguage: accept_language,
                         platform: platform)
        end

      end # Network
    end # DevTools
  end # WebDriver
end #Selenium
