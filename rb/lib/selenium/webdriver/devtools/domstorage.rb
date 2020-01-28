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
      class DOMStorage

        def initialize(devtools)
          @devtools = devtools
        end

        def clear(storage_id:)
          @devtools.send('DOMStorage.clear',
                         storageId: storage_id)
        end

        def disable
          @devtools.send('DOMStorage.disable')
        end

        def enable
          @devtools.send('DOMStorage.enable')
        end

        def get_domstorage_items(storage_id:)
          @devtools.send('DOMStorage.getDOMStorageItems',
                         storageId: storage_id)
        end

        def remove_domstorage_item(storage_id:, key:)
          @devtools.send('DOMStorage.removeDOMStorageItem',
                         storageId: storage_id,
                         key: key)
        end

        def set_domstorage_item(storage_id:, key:, value:)
          @devtools.send('DOMStorage.setDOMStorageItem',
                         storageId: storage_id,
                         key: key,
                         value: value)
        end

      end # DOMStorage
    end # DevTools
  end # WebDriver
end #Selenium
