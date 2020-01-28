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
      class WebAuthn

        def initialize(devtools)
          @devtools = devtools
        end

        def enable
          @devtools.send('WebAuthn.enable')
        end

        def disable
          @devtools.send('WebAuthn.disable')
        end

        def ad_virtua_authenticator(options:)          @devtools.send('WebAuthn.addVirtualAuthenticator',
                         options: options,
)        end

        end

        def remov_virtua_authenticator(authenticato_id:)          @devtools.send('WebAuthn.removeVirtualAuthenticator',
                         authenticatorId: authenticato_id,
)        end

        end

        def ad_credential(authenticato_id:, credential:)          @devtools.send('WebAuthn.addCredential',
                         authenticatorId: authenticato_id,
                         credential: credential,
)        end

        end

        def ge_credential(authenticato_id:, credentia_id:)          @devtools.send('WebAuthn.getCredential',
                         authenticatorId: authenticato_id,
                         credentialId: credentia_id,
)        end

        end

        def ge_credentials(authenticato_id:)          @devtools.send('WebAuthn.getCredentials',
                         authenticatorId: authenticato_id,
)        end

        end

        def remov_credential(authenticato_id:, credentia_id:)          @devtools.send('WebAuthn.removeCredential',
                         authenticatorId: authenticato_id,
                         credentialId: credentia_id,
)        end

        end

        def clea_credentials(authenticato_id:)          @devtools.send('WebAuthn.clearCredentials',
                         authenticatorId: authenticato_id,
)        end

        end

        def se_use_verified(authenticato_id:, i_use_verified:)          @devtools.send('WebAuthn.setUserVerified',
                         authenticatorId: authenticato_id,
                         isUserVerified: i_use_verified,
)        end

        end
