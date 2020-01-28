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
      class DOM

        def initialize(devtools)
          @devtools = devtools
        end

        def collect_class_names_from_subtree(node_id:)
          @devtools.send('DOM.collectClassNamesFromSubtree',
                         nodeId: node_id)
        end

        def copy_to(node_id:, target_node_id:, insert_before_node_id:)
          @devtools.send('DOM.copyTo',
                         nodeId: node_id,
                         targetNodeId: target_node_id,
                         insertBeforeNodeId: insert_before_node_id)
        end

        def describe_node(node_id:, backend_node_id:, object_id:, depth:, pierce:)
          @devtools.send('DOM.describeNode',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id,
                         depth: depth,
                         pierce: pierce)
        end

        def disable
          @devtools.send('DOM.disable')
        end

        def discard_search_results(search_id:)
          @devtools.send('DOM.discardSearchResults',
                         searchId: search_id)
        end

        def enable
          @devtools.send('DOM.enable')
        end

        def focus(node_id:, backend_node_id:, object_id:)
          @devtools.send('DOM.focus',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id)
        end

        def get_attributes(node_id:)
          @devtools.send('DOM.getAttributes',
                         nodeId: node_id)
        end

        def get_box_model(node_id:, backend_node_id:, object_id:)
          @devtools.send('DOM.getBoxModel',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id)
        end

        def get_content_quads(node_id:, backend_node_id:, object_id:)
          @devtools.send('DOM.getContentQuads',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id)
        end

        def get_document(depth:, pierce:)
          @devtools.send('DOM.getDocument',
                         depth: depth,
                         pierce: pierce)
        end

        def get_flattened_document(depth:, pierce:)
          @devtools.send('DOM.getFlattenedDocument',
                         depth: depth,
                         pierce: pierce)
        end

        def get_node_for_location(x:, y:, include_user_agent_shadow_dom:)
          @devtools.send('DOM.getNodeForLocation',
                         x: x,
                         y: y,
                         includeUserAgentShadowDOM: include_user_agent_shadow_dom)
        end

        def get_outer_html(node_id:, backend_node_id:, object_id:)
          @devtools.send('DOM.getOuterHTML',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id)
        end

        def get_relayout_boundary(node_id:)
          @devtools.send('DOM.getRelayoutBoundary',
                         nodeId: node_id)
        end

        def get_search_results(search_id:, from_index:, to_index:)
          @devtools.send('DOM.getSearchResults',
                         searchId: search_id,
                         fromIndex: from_index,
                         toIndex: to_index)
        end

        def hide_highlight
          @devtools.send('DOM.hideHighlight')
        end

        def highlight_node
          @devtools.send('DOM.highlightNode')
        end

        def highlight_rect
          @devtools.send('DOM.highlightRect')
        end

        def mark_undoable_state
          @devtools.send('DOM.markUndoableState')
        end

        def move_to(node_id:, target_node_id:, insert_before_node_id:)
          @devtools.send('DOM.moveTo',
                         nodeId: node_id,
                         targetNodeId: target_node_id,
                         insertBeforeNodeId: insert_before_node_id)
        end

        def perform_search(query:, include_user_agent_shadow_dom:)
          @devtools.send('DOM.performSearch',
                         query: query,
                         includeUserAgentShadowDOM: include_user_agent_shadow_dom)
        end

        def push_node_by_path_to_frontend(path:)
          @devtools.send('DOM.pushNodeByPathToFrontend',
                         path: path)
        end

        def push_nodes_by_backend_ids_to_frontend(backend_node_ids:)
          @devtools.send('DOM.pushNodesByBackendIdsToFrontend',
                         backendNodeIds: backend_node_ids)
        end

        def query_selector(node_id:, selector:)
          @devtools.send('DOM.querySelector',
                         nodeId: node_id,
                         selector: selector)
        end

        def query_selector_all(node_id:, selector:)
          @devtools.send('DOM.querySelectorAll',
                         nodeId: node_id,
                         selector: selector)
        end

        def redo
          @devtools.send('DOM.redo')
        end

        def remove_attribute(node_id:, name:)
          @devtools.send('DOM.removeAttribute',
                         nodeId: node_id,
                         name: name)
        end

        def remove_node(node_id:)
          @devtools.send('DOM.removeNode',
                         nodeId: node_id)
        end

        def request_child_nodes(node_id:, depth:, pierce:)
          @devtools.send('DOM.requestChildNodes',
                         nodeId: node_id,
                         depth: depth,
                         pierce: pierce)
        end

        def request_node(object_id:)
          @devtools.send('DOM.requestNode',
                         objectId: object_id)
        end

        def resolve_node(node_id:, backend_node_id:, object_group:, execution_context_id:)
          @devtools.send('DOM.resolveNode',
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectGroup: object_group,
                         executionContextId: execution_context_id)
        end

        def set_attribute_value(node_id:, name:, value:)
          @devtools.send('DOM.setAttributeValue',
                         nodeId: node_id,
                         name: name,
                         value: value)
        end

        def set_attributes_as_text(node_id:, text:, name:)
          @devtools.send('DOM.setAttributesAsText',
                         nodeId: node_id,
                         text: text,
                         name: name)
        end

        def set_file_input_files(files:, node_id:, backend_node_id:, object_id:)
          @devtools.send('DOM.setFileInputFiles',
                         files: files,
                         nodeId: node_id,
                         backendNodeId: backend_node_id,
                         objectId: object_id)
        end

        def set_node_stack_traces_enabled(enable:)
          @devtools.send('DOM.setNodeStackTracesEnabled',
                         enable: enable)
        end

        def get_node_stack_traces(node_id:)
          @devtools.send('DOM.getNodeStackTraces',
                         nodeId: node_id)
        end

        def get_file_info(object_id:)
          @devtools.send('DOM.getFileInfo',
                         objectId: object_id)
        end

        def set_inspected_node(node_id:)
          @devtools.send('DOM.setInspectedNode',
                         nodeId: node_id)
        end

        def set_node_name(node_id:, name:)
          @devtools.send('DOM.setNodeName',
                         nodeId: node_id,
                         name: name)
        end

        def set_node_value(node_id:, value:)
          @devtools.send('DOM.setNodeValue',
                         nodeId: node_id,
                         value: value)
        end

        def set_outer_html(node_id:, outer_html:)
          @devtools.send('DOM.setOuterHTML',
                         nodeId: node_id,
                         outerHTML: outer_html)
        end

        def undo
          @devtools.send('DOM.undo')
        end

        def get_frame_owner(frame_id:)
          @devtools.send('DOM.getFrameOwner',
                         frameId: frame_id)
        end

      end # DOM
    end # DevTools
  end # WebDriver
end #Selenium
