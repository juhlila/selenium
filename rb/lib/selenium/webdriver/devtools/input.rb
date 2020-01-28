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
      class Input

        def initialize(devtools)
          @devtools = devtools
        end

        def dispatch_key_event(type:, modifiers:, timestamp:, text:, unmodified_text:, key_identifier:, code:, key:, windows_virtual_key_code:, native_virtual_key_code:, auto_repeat:, is_keypad:, is_system_key:, location:)
          @devtools.send('Input.dispatchKeyEvent',
                         type: type,
                         modifiers: modifiers,
                         timestamp: timestamp,
                         text: text,
                         unmodifiedText: unmodified_text,
                         keyIdentifier: key_identifier,
                         code: code,
                         key: key,
                         windowsVirtualKeyCode: windows_virtual_key_code,
                         nativeVirtualKeyCode: native_virtual_key_code,
                         autoRepeat: auto_repeat,
                         isKeypad: is_keypad,
                         isSystemKey: is_system_key,
                         location: location)
        end

        def insert_text(text:)
          @devtools.send('Input.insertText',
                         text: text)
        end

        def dispatch_mouse_event(type:, x:, y:, modifiers:, timestamp:, button:, buttons:, click_count:, delta_x:, delta_y:, pointer_type:)
          @devtools.send('Input.dispatchMouseEvent',
                         type: type,
                         x: x,
                         y: y,
                         modifiers: modifiers,
                         timestamp: timestamp,
                         button: button,
                         buttons: buttons,
                         clickCount: click_count,
                         deltaX: delta_x,
                         deltaY: delta_y,
                         pointerType: pointer_type)
        end

        def dispatch_touch_event(type:, touch_points:, modifiers:, timestamp:)
          @devtools.send('Input.dispatchTouchEvent',
                         type: type,
                         touchPoints: touch_points,
                         modifiers: modifiers,
                         timestamp: timestamp)
        end

        def emulate_touch_from_mouse_event(type:, x:, y:, button:, timestamp:, delta_x:, delta_y:, modifiers:, click_count:)
          @devtools.send('Input.emulateTouchFromMouseEvent',
                         type: type,
                         x: x,
                         y: y,
                         button: button,
                         timestamp: timestamp,
                         deltaX: delta_x,
                         deltaY: delta_y,
                         modifiers: modifiers,
                         clickCount: click_count)
        end

        def set_ignore_input_events(ignore:)
          @devtools.send('Input.setIgnoreInputEvents',
                         ignore: ignore)
        end

        def synthesize_pinch_gesture(x:, y:, scale_factor:, relative_speed:, gesture_source_type:)
          @devtools.send('Input.synthesizePinchGesture',
                         x: x,
                         y: y,
                         scaleFactor: scale_factor,
                         relativeSpeed: relative_speed,
                         gestureSourceType: gesture_source_type)
        end

        def synthesize_scroll_gesture(x:, y:, x_distance:, y_distance:, x_overscroll:, y_overscroll:, prevent_fling:, speed:, gesture_source_type:, repeat_count:, repeat_delay_ms:, interaction_marker_name:)
          @devtools.send('Input.synthesizeScrollGesture',
                         x: x,
                         y: y,
                         xDistance: x_distance,
                         yDistance: y_distance,
                         xOverscroll: x_overscroll,
                         yOverscroll: y_overscroll,
                         preventFling: prevent_fling,
                         speed: speed,
                         gestureSourceType: gesture_source_type,
                         repeatCount: repeat_count,
                         repeatDelayMs: repeat_delay_ms,
                         interactionMarkerName: interaction_marker_name)
        end

        def synthesize_tap_gesture(x:, y:, duration:, tap_count:, gesture_source_type:)
          @devtools.send('Input.synthesizeTapGesture',
                         x: x,
                         y: y,
                         duration: duration,
                         tapCount: tap_count,
                         gestureSourceType: gesture_source_type)
        end

      end # Input
    end # DevTools
  end # WebDriver
end #Selenium
