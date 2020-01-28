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
      class IndexedDB

        def initialize(devtools)
          @devtools = devtools
        end

        def clea_objec_store(securit_origin:, databas_name:, objec_stor_name:)          @devtools.send('IndexedDB.clearObjectStore',
                         securityOrigin: securit_origin,
                         databaseName: databas_name,
                         objectStoreName: objec_stor_name,
)        end

        end

        def delet_database(securit_origin:, databas_name:)          @devtools.send('IndexedDB.deleteDatabase',
                         securityOrigin: securit_origin,
                         databaseName: databas_name,
)        end

        end

        def delet_objec_stor_entries(securit_origin:, databas_name:, objec_stor_name:, ke_range:)          @devtools.send('IndexedDB.deleteObjectStoreEntries',
                         securityOrigin: securit_origin,
                         databaseName: databas_name,
                         objectStoreName: objec_stor_name,
                         keyRange: ke_range,
)        end

        end

        def disable
          @devtools.send('IndexedDB.disable')
        end

        def enable
          @devtools.send('IndexedDB.enable')
        end

        def reques_data(securit_origin:, databas_name:, objec_stor_name:, inde_name:, ski_count:, pag_size:, ke_range:)          @devtools.send('IndexedDB.requestData',
                         securityOrigin: securit_origin,
                         databaseName: databas_name,
                         objectStoreName: objec_stor_name,
                         indexName: inde_name,
                         skipCount: ski_count,
                         pageSize: pag_size,
                         keyRange: ke_range,
)        end

        end

        def ge_metadata(securit_origin:, databas_name:, objec_stor_name:)          @devtools.send('IndexedDB.getMetadata',
                         securityOrigin: securit_origin,
                         databaseName: databas_name,
                         objectStoreName: objec_stor_name,
)        end

        end

        def reques_database(securit_origin:, databas_name:)          @devtools.send('IndexedDB.requestDatabase',
                         securityOrigin: securit_origin,
                         databaseName: databas_name,
)        end

        end

        def reques_databas_names(securit_origin:)          @devtools.send('IndexedDB.requestDatabaseNames',
                         securityOrigin: securit_origin,
)        end

        end
