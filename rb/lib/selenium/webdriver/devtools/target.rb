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
      class Target

        def initialize(devtools)
          @devtools = devtools
        end

        def activate_target(target_id:)
          @devtools.send('Target.activateTarget',
                         targetId: target_id)
        end

        def attach_to_target(target_id:, flatten:)
          @devtools.send('Target.attachToTarget',
                         targetId: target_id,
                         flatten: flatten)
        end

        def attach_to_browser_target
          @devtools.send('Target.attachToBrowserTarget')
        end

        def close_target(target_id:)
          @devtools.send('Target.closeTarget',
                         targetId: target_id)
        end

        def expose_dev_tools_protocol(target_id:, binding_name:)
          @devtools.send('Target.exposeDevToolsProtocol',
                         targetId: target_id,
                         bindingName: binding_name)
        end

        def create_browser_context
          @devtools.send('Target.createBrowserContext')
        end

        def get_browser_contexts
          @devtools.send('Target.getBrowserContexts')
        end

        def create_target(url:, width:, height:, browser_context_id:, enable_begin_frame_control:, new_window:, background:)
          @devtools.send('Target.createTarget',
                         url: url,
                         width: width,
                         height: height,
                         browserContextId: browser_context_id,
                         enableBeginFrameControl: enable_begin_frame_control,
                         newWindow: new_window,
                         background: background)
        end

        def detach_from_target(session_id:, target_id:)
          @devtools.send('Target.detachFromTarget',
                         sessionId: session_id,
                         targetId: target_id)
        end

        def dispose_browser_context(browser_context_id:)
          @devtools.send('Target.disposeBrowserContext',
                         browserContextId: browser_context_id)
        end

        def get_target_info(target_id:)
          @devtools.send('Target.getTargetInfo',
                         targetId: target_id)
        end

        def get_targets
          @devtools.send('Target.getTargets')
        end

        def send_message_to_target(message:, session_id:, target_id:)
          @devtools.send('Target.sendMessageToTarget',
                         message: message,
                         sessionId: session_id,
                         targetId: target_id)
        end

        def set_auto_attach(auto_attach:, wait_for_debugger_on_start:, flatten:)
          @devtools.send('Target.setAutoAttach',
                         autoAttach: auto_attach,
                         waitForDebuggerOnStart: wait_for_debugger_on_start,
                         flatten: flatten)
        end

        def set_discover_targets(discover:)
          @devtools.send('Target.setDiscoverTargets',
                         discover: discover)
        end

        def set_remote_locations(locations:)
          @devtools.send('Target.setRemoteLocations',
                         locations: locations)
        end

      end # Target
    end # DevTools
  end # WebDriver
end #Selenium
