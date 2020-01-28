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
      class CacheStorage

        def initialize(devtools)
          @devtools = devtools
        end

        def delete_cache(cache_id:)
          @devtools.send('CacheStorage.deleteCache',
                         cacheId: cache_id)
        end

        def delete_entry(cache_id:, request:)
          @devtools.send('CacheStorage.deleteEntry',
                         cacheId: cache_id,
                         request: request)
        end

        def request_cache_names(security_origin:)
          @devtools.send('CacheStorage.requestCacheNames',
                         securityOrigin: security_origin)
        end

        def request_cached_response(cache_id:, request_url:, request_headers:)
          @devtools.send('CacheStorage.requestCachedResponse',
                         cacheId: cache_id,
                         requestURL: request_url,
                         requestHeaders: request_headers)
        end

        def request_entries(cache_id:, skip_count:, page_size:, path_filter:)
          @devtools.send('CacheStorage.requestEntries',
                         cacheId: cache_id,
                         skipCount: skip_count,
                         pageSize: page_size,
                         pathFilter: path_filter)
        end

      end # CacheStorage
    end # DevTools
  end # WebDriver
end #Selenium
