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
      class Fetch

        def initialize(devtools)
          @devtools = devtools
        end

        def disable
          @devtools.send('Fetch.disable')
        end

        def enable(patterns:, handle_auth_requests:)
          @devtools.send('Fetch.enable',
                         patterns: patterns,
                         handleAuthRequests: handle_auth_requests)
        end

        def fail_request(request_id:, error_reason:)
          @devtools.send('Fetch.failRequest',
                         requestId: request_id,
                         errorReason: error_reason)
        end

        def fulfill_request(request_id:, response_code:, response_headers:, body:, response_phrase:)
          @devtools.send('Fetch.fulfillRequest',
                         requestId: request_id,
                         responseCode: response_code,
                         responseHeaders: response_headers,
                         body: body,
                         responsePhrase: response_phrase)
        end

        def continue_request(request_id:, url:, method:, post_data:, headers:)
          @devtools.send('Fetch.continueRequest',
                         requestId: request_id,
                         url: url,
                         method: method,
                         postData: post_data,
                         headers: headers)
        end

        def continue_with_auth(request_id:, auth_challenge_response:)
          @devtools.send('Fetch.continueWithAuth',
                         requestId: request_id,
                         authChallengeResponse: auth_challenge_response)
        end

        def get_response_body(request_id:)
          @devtools.send('Fetch.getResponseBody',
                         requestId: request_id)
        end

        def take_response_body_as_stream(request_id:)
          @devtools.send('Fetch.takeResponseBodyAsStream',
                         requestId: request_id)
        end

      end # Fetch
    end # DevTools
  end # WebDriver
end #Selenium
