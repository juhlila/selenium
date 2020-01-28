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
      class CSS

        def initialize(devtools)
          @devtools = devtools
        end

        def add_rule(style_sheet_id:, rule_text:, location:)
          @devtools.send('CSS.addRule',
                         styleSheetId: style_sheet_id,
                         ruleText: rule_text,
                         location: location)
        end

        def collect_class_names(style_sheet_id:)
          @devtools.send('CSS.collectClassNames',
                         styleSheetId: style_sheet_id)
        end

        def create_style_sheet(frame_id:)
          @devtools.send('CSS.createStyleSheet',
                         frameId: frame_id)
        end

        def disable
          @devtools.send('CSS.disable')
        end

        def enable
          @devtools.send('CSS.enable')
        end

        def force_pseudo_state(node_id:, forced_pseudo_classes:)
          @devtools.send('CSS.forcePseudoState',
                         nodeId: node_id,
                         forcedPseudoClasses: forced_pseudo_classes)
        end

        def get_background_colors(node_id:)
          @devtools.send('CSS.getBackgroundColors',
                         nodeId: node_id)
        end

        def get_computed_style_for_node(node_id:)
          @devtools.send('CSS.getComputedStyleForNode',
                         nodeId: node_id)
        end

        def get_inline_styles_for_node(node_id:)
          @devtools.send('CSS.getInlineStylesForNode',
                         nodeId: node_id)
        end

        def get_matched_styles_for_node(node_id:)
          @devtools.send('CSS.getMatchedStylesForNode',
                         nodeId: node_id)
        end

        def get_media_queries
          @devtools.send('CSS.getMediaQueries')
        end

        def get_platform_fonts_for_node(node_id:)
          @devtools.send('CSS.getPlatformFontsForNode',
                         nodeId: node_id)
        end

        def get_style_sheet_text(style_sheet_id:)
          @devtools.send('CSS.getStyleSheetText',
                         styleSheetId: style_sheet_id)
        end

        def set_effective_property_value_for_node(node_id:, property_name:, value:)
          @devtools.send('CSS.setEffectivePropertyValueForNode',
                         nodeId: node_id,
                         propertyName: property_name,
                         value: value)
        end

        def set_keyframe_key(style_sheet_id:, range:, key_text:)
          @devtools.send('CSS.setKeyframeKey',
                         styleSheetId: style_sheet_id,
                         range: range,
                         keyText: key_text)
        end

        def set_media_text(style_sheet_id:, range:, text:)
          @devtools.send('CSS.setMediaText',
                         styleSheetId: style_sheet_id,
                         range: range,
                         text: text)
        end

        def set_rule_selector(style_sheet_id:, range:, selector:)
          @devtools.send('CSS.setRuleSelector',
                         styleSheetId: style_sheet_id,
                         range: range,
                         selector: selector)
        end

        def set_style_sheet_text(style_sheet_id:, text:)
          @devtools.send('CSS.setStyleSheetText',
                         styleSheetId: style_sheet_id,
                         text: text)
        end

        def set_style_texts(edits:)
          @devtools.send('CSS.setStyleTexts',
                         edits: edits)
        end

        def start_rule_usage_tracking
          @devtools.send('CSS.startRuleUsageTracking')
        end

        def stop_rule_usage_tracking
          @devtools.send('CSS.stopRuleUsageTracking')
        end

        def take_coverage_delta
          @devtools.send('CSS.takeCoverageDelta')
        end

      end # CSS
    end # DevTools
  end # WebDriver
end #Selenium
