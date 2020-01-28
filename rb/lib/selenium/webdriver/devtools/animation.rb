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
      class Animation

        def initialize(devtools)
          @devtools = devtools
        end

        def disable
          @devtools.send('Animation.disable')
        end

        def enable
          @devtools.send('Animation.enable')
        end

        def get_current_time(id:)
          @devtools.send('Animation.getCurrentTime',
                         id: id)
        end

        def get_playback_rate
          @devtools.send('Animation.getPlaybackRate')
        end

        def release_animations(animations:)
          @devtools.send('Animation.releaseAnimations',
                         animations: animations)
        end

        def resolve_animation(animation_id:)
          @devtools.send('Animation.resolveAnimation',
                         animationId: animation_id)
        end

        def seek_animations(animations:, current_time:)
          @devtools.send('Animation.seekAnimations',
                         animations: animations,
                         currentTime: current_time)
        end

        def set_paused(animations:, paused:)
          @devtools.send('Animation.setPaused',
                         animations: animations,
                         paused: paused)
        end

        def set_playback_rate(playback_rate:)
          @devtools.send('Animation.setPlaybackRate',
                         playbackRate: playback_rate)
        end

        def set_timing(animation_id:, duration:, delay:)
          @devtools.send('Animation.setTiming',
                         animationId: animation_id,
                         duration: duration,
                         delay: delay)
        end

      end # Animation
    end # DevTools
  end # WebDriver
end #Selenium
