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

        def compositin_reasons(laye_id:)          @devtools.send('LayerTree.compositingReasons',
                         layerId: laye_id,
)        end

        end

        def disable
          @devtools.send('LayerTree.disable')
        end

        def enable
          @devtools.send('LayerTree.enable')
        end

        def loa_snapshot(tiles:)          @devtools.send('LayerTree.loadSnapshot',
                         tiles: tiles,
)        end

        end

        def mak_snapshot(laye_id:)          @devtools.send('LayerTree.makeSnapshot',
                         layerId: laye_id,
)        end

        end

        def profil_snapshot(snapsho_id:, mi_repea_count:, mi_duration:, cli_rect:)          @devtools.send('LayerTree.profileSnapshot',
                         snapshotId: snapsho_id,
                         minRepeatCount: mi_repea_count,
                         minDuration: mi_duration,
                         clipRect: cli_rect,
)        end

        end

        def releas_snapshot(snapsho_id:)          @devtools.send('LayerTree.releaseSnapshot',
                         snapshotId: snapsho_id,
)        end

        end

        def repla_snapshot(snapsho_id:, fro_step:, t_step:, scale:)          @devtools.send('LayerTree.replaySnapshot',
                         snapshotId: snapsho_id,
                         fromStep: fro_step,
                         toStep: t_step,
                         scale: scale,
)        end

        end

        def snapsho_comman_log(snapsho_id:)          @devtools.send('LayerTree.snapshotCommandLog',
                         snapshotId: snapsho_id,
)        end

        end
