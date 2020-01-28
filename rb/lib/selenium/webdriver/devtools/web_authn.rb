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

        def add_virtual_authenticator(options:)
          @devtools.send('WebAuthn.addVirtualAuthenticator',
                         options: options)
        end

        def remove_virtual_authenticator(authenticator_id:)
          @devtools.send('WebAuthn.removeVirtualAuthenticator',
                         authenticatorId: authenticator_id)
        end

        def add_credential(authenticator_id:, credential:)
          @devtools.send('WebAuthn.addCredential',
                         authenticatorId: authenticator_id,
                         credential: credential)
        end

        def get_credential(authenticator_id:, credential_id:)
          @devtools.send('WebAuthn.getCredential',
                         authenticatorId: authenticator_id,
                         credentialId: credential_id)
        end

        def get_credentials(authenticator_id:)
          @devtools.send('WebAuthn.getCredentials',
                         authenticatorId: authenticator_id)
        end

        def remove_credential(authenticator_id:, credential_id:)
          @devtools.send('WebAuthn.removeCredential',
                         authenticatorId: authenticator_id,
                         credentialId: credential_id)
        end

        def clear_credentials(authenticator_id:)
          @devtools.send('WebAuthn.clearCredentials',
                         authenticatorId: authenticator_id)
        end

        def set_user_verified(authenticator_id:, is_user_verified:)
          @devtools.send('WebAuthn.setUserVerified',
                         authenticatorId: authenticator_id,
                         isUserVerified: is_user_verified)
        end

      end # WebAuthn
    end # DevTools
  end # WebDriver
end #Selenium
