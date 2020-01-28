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
      class Storage

        def initialize(devtools)
          @devtools = devtools
        end

        def clear_data_for_origin(origin:, storage_types:)
          @devtools.send('Storage.clearDataForOrigin',
                         origin: origin,
                         storageTypes: storage_types)
        end

        def get_usage_and_quota(origin:)
          @devtools.send('Storage.getUsageAndQuota',
                         origin: origin)
        end

        def track_cache_storage_for_origin(origin:)
          @devtools.send('Storage.trackCacheStorageForOrigin',
                         origin: origin)
        end

        def track_indexed_dbfor_origin(origin:)
          @devtools.send('Storage.trackIndexedDBForOrigin',
                         origin: origin)
        end

        def untrack_cache_storage_for_origin(origin:)
          @devtools.send('Storage.untrackCacheStorageForOrigin',
                         origin: origin)
        end

        def untrack_indexed_dbfor_origin(origin:)
          @devtools.send('Storage.untrackIndexedDBForOrigin',
                         origin: origin)
        end

      end # Storage
    end # DevTools
  end # WebDriver
end #Selenium
