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
      class Tracing

        def initialize(devtools)
          @devtools = devtools
        end

        def end
          @devtools.send('Tracing.end')
        end

        def get_categories
          @devtools.send('Tracing.getCategories')
        end

        def record_clock_sync_marker(sync_id:)
          @devtools.send('Tracing.recordClockSyncMarker',
                         syncId: sync_id)
        end

        def request_memory_dump
          @devtools.send('Tracing.requestMemoryDump')
        end

        def start(categories:, options:, buffer_usage_reporting_interval:, transfer_mode:, stream_format:, stream_compression:, trace_config:)
          @devtools.send('Tracing.start',
                         categories: categories,
                         options: options,
                         bufferUsageReportingInterval: buffer_usage_reporting_interval,
                         transferMode: transfer_mode,
                         streamFormat: stream_format,
                         streamCompression: stream_compression,
                         traceConfig: trace_config)
        end

      end # Tracing
    end # DevTools
  end # WebDriver
end #Selenium
