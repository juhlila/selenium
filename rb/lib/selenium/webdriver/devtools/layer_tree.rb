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
      class LayerTree

        def initialize(devtools)
          @devtools = devtools
        end

        def compositing_reasons(layer_id:)
          @devtools.send('LayerTree.compositingReasons',
                         layerId: layer_id)
        end

        def disable
          @devtools.send('LayerTree.disable')
        end

        def enable
          @devtools.send('LayerTree.enable')
        end

        def load_snapshot(tiles:)
          @devtools.send('LayerTree.loadSnapshot',
                         tiles: tiles)
        end

        def make_snapshot(layer_id:)
          @devtools.send('LayerTree.makeSnapshot',
                         layerId: layer_id)
        end

        def profile_snapshot(snapshot_id:, min_repeat_count:, min_duration:, clip_rect:)
          @devtools.send('LayerTree.profileSnapshot',
                         snapshotId: snapshot_id,
                         minRepeatCount: min_repeat_count,
                         minDuration: min_duration,
                         clipRect: clip_rect)
        end

        def release_snapshot(snapshot_id:)
          @devtools.send('LayerTree.releaseSnapshot',
                         snapshotId: snapshot_id)
        end

        def replay_snapshot(snapshot_id:, from_step:, to_step:, scale:)
          @devtools.send('LayerTree.replaySnapshot',
                         snapshotId: snapshot_id,
                         fromStep: from_step,
                         toStep: to_step,
                         scale: scale)
        end

        def snapshot_command_log(snapshot_id:)
          @devtools.send('LayerTree.snapshotCommandLog',
                         snapshotId: snapshot_id)
        end

      end # LayerTree
    end # DevTools
  end # WebDriver
end #Selenium
