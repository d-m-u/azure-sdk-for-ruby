# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # The list of node health state chunks in the cluster that respect the
    # input filters in the chunk query. Returned by get cluster health state
    # chunks query.
    #
    class NodeHealthStateChunkList < EntityHealthStateChunkList

      include MsRestAzure

      # @return [Array<NodeHealthStateChunk>] The list of node health state
      # chunks that respect the input filters in the chunk query.
      attr_accessor :items


      #
      # Mapper for NodeHealthStateChunkList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeHealthStateChunkList',
          type: {
            name: 'Composite',
            class_name: 'NodeHealthStateChunkList',
            model_properties: {
              total_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'TotalCount',
                type: {
                  name: 'Number'
                }
              },
              items: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Items',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeHealthStateChunkElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeHealthStateChunk'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
