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
      class Overlay

        def initialize(devtools)
          @devtools = devtools
        end

        def disable
          @devtools.send('Overlay.disable')
        end

        def enable
          @devtools.send('Overlay.enable')
        end

        def get_highlight_object_for_test(node_id:, include_distance:, include_style:)
          @devtools.send('Overlay.getHighlightObjectForTest',
                         nodeId: node_id,
                         includeDistance: include_distance,
                         includeStyle: include_style)
        end

        def hide_highlight
          @devtools.send('Overlay.hideHighlight')
        end

        def highlight_frame(frame_id:, content_color:, content_outline_color:)
          @devtools.send('Overlay.highlightFrame',
                         frameId: frame_id,
                         contentColor: content_color,
                         contentOutlineColor: content_outline_color)
        end

        def highlight_node(highlight_config:, node_id:, backend_node_id:, object_id:, selector:)
          @devtools.send('Overlay.highlightNode',
                         highlightConfig: highlight_config,
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id,
                         selector: selector)
        end

        def highlight_quad(quad:, color:, outline_color:)
          @devtools.send('Overlay.highlightQuad',
                         quad: quad,
                         color: color,
                         outlineColor: outline_color)
        end

        def highlight_rect(x:, y:, width:, height:, color:, outline_color:)
          @devtools.send('Overlay.highlightRect',
                         x: x,
                         y: y,
                         width: width,
                         height: height,
                         color: color,
                         outlineColor: outline_color)
        end

        def set_inspect_mode(mode:, highlight_config:)
          @devtools.send('Overlay.setInspectMode',
                         mode: mode,
                         highlightConfig: highlight_config)
        end

        def set_show_ad_highlights(show:)
          @devtools.send('Overlay.setShowAdHighlights',
                         show: show)
        end

        def set_paused_in_debugger_message(message:)
          @devtools.send('Overlay.setPausedInDebuggerMessage',
                         message: message)
        end

        def set_show_debug_borders(show:)
          @devtools.send('Overlay.setShowDebugBorders',
                         show: show)
        end

        def set_show_fpscounter(show:)
          @devtools.send('Overlay.setShowFPSCounter',
                         show: show)
        end

        def set_show_paint_rects(result:)
          @devtools.send('Overlay.setShowPaintRects',
                         result: result)
        end

        def set_show_layout_shift_regions(result:)
          @devtools.send('Overlay.setShowLayoutShiftRegions',
                         result: result)
        end

        def set_show_scroll_bottleneck_rects(show:)
          @devtools.send('Overlay.setShowScrollBottleneckRects',
                         show: show)
        end

        def set_show_hit_test_borders(show:)
          @devtools.send('Overlay.setShowHitTestBorders',
                         show: show)
        end

        def set_show_viewport_size_on_resize(show:)
          @devtools.send('Overlay.setShowViewportSizeOnResize',
                         show: show)
        end

      end # Overlay
    end # DevTools
  end # WebDriver
end #Selenium
