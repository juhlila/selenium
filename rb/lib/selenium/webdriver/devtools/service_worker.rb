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
      class ServiceWorker

        def initialize(devtools)
          @devtools = devtools
        end

        def deliver_push_message(origin:, registration_id:, data:)
          @devtools.send('ServiceWorker.deliverPushMessage',
                         origin: origin,
                         registrationId: registration_id,
                         data: data)
        end

        def disable
          @devtools.send('ServiceWorker.disable')
        end

        def dispatch_sync_event(origin:, registration_id:, tag:, last_chance:)
          @devtools.send('ServiceWorker.dispatchSyncEvent',
                         origin: origin,
                         registrationId: registration_id,
                         tag: tag,
                         lastChance: last_chance)
        end

        def dispatch_periodic_sync_event(origin:, registration_id:, tag:)
          @devtools.send('ServiceWorker.dispatchPeriodicSyncEvent',
                         origin: origin,
                         registrationId: registration_id,
                         tag: tag)
        end

        def enable
          @devtools.send('ServiceWorker.enable')
        end

        def inspect_worker(version_id:)
          @devtools.send('ServiceWorker.inspectWorker',
                         versionId: version_id)
        end

        def set_force_update_on_page_load(force_update_on_page_load:)
          @devtools.send('ServiceWorker.setForceUpdateOnPageLoad',
                         forceUpdateOnPageLoad: force_update_on_page_load)
        end

        def skip_waiting(scope_url:)
          @devtools.send('ServiceWorker.skipWaiting',
                         scopeURL: scope_url)
        end

        def start_worker(scope_url:)
          @devtools.send('ServiceWorker.startWorker',
                         scopeURL: scope_url)
        end

        def stop_all_workers
          @devtools.send('ServiceWorker.stopAllWorkers')
        end

        def stop_worker(version_id:)
          @devtools.send('ServiceWorker.stopWorker',
                         versionId: version_id)
        end

        def unregister(scope_url:)
          @devtools.send('ServiceWorker.unregister',
                         scopeURL: scope_url)
        end

        def update_registration(scope_url:)
          @devtools.send('ServiceWorker.updateRegistration',
                         scopeURL: scope_url)
        end

      end # ServiceWorker
    end # DevTools
  end # WebDriver
end #Selenium
