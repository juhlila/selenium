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

        def delive_pus_message(origin:, registratio_id:, data:)          @devtools.send('ServiceWorker.deliverPushMessage',
                         origin: origin,
                         registrationId: registratio_id,
                         data: data,
)        end

        end

        def disable
          @devtools.send('ServiceWorker.disable')
        end

        def dispatc_syn_event(origin:, registratio_id:, tag:, las_chance:)          @devtools.send('ServiceWorker.dispatchSyncEvent',
                         origin: origin,
                         registrationId: registratio_id,
                         tag: tag,
                         lastChance: las_chance,
)        end

        end

        def dispatc_periodi_syn_event(origin:, registratio_id:, tag:)          @devtools.send('ServiceWorker.dispatchPeriodicSyncEvent',
                         origin: origin,
                         registrationId: registratio_id,
                         tag: tag,
)        end

        end

        def enable
          @devtools.send('ServiceWorker.enable')
        end

        def inspec_worker(versio_id:)          @devtools.send('ServiceWorker.inspectWorker',
                         versionId: versio_id,
)        end

        end

        def se_forc_updat_o_pag_load(forc_updat_o_pag_load:)          @devtools.send('ServiceWorker.setForceUpdateOnPageLoad',
                         forceUpdateOnPageLoad: forc_updat_o_pag_load,
)        end

        end

        def ski_waiting(scop_url:)          @devtools.send('ServiceWorker.skipWaiting',
                         scopeURL: scop_url,
)        end

        end

        def star_worker(scop_url:)          @devtools.send('ServiceWorker.startWorker',
                         scopeURL: scop_url,
)        end

        end

        def sto_al_workers
          @devtools.send('ServiceWorker.stopAllWorkers')
        end

        def sto_worker(versio_id:)          @devtools.send('ServiceWorker.stopWorker',
                         versionId: versio_id,
)        end

        end

        def unregister(scop_url:)          @devtools.send('ServiceWorker.unregister',
                         scopeURL: scop_url,
)        end

        end

        def updat_registration(scop_url:)          @devtools.send('ServiceWorker.updateRegistration',
                         scopeURL: scop_url,
)        end

        end
