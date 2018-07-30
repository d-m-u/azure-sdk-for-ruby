# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # Response for a migration of app content request.
    #
    class StorageMigrationResponse < ProxyOnlyResource

      include MsRestAzure

      # @return [String] When server starts the migration process, it will
      # return an operation ID identifying that particular migration operation.
      attr_accessor :operation_id


      #
      # Mapper for StorageMigrationResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'StorageMigrationResponse',
          type: {
            name: 'Composite',
            class_name: 'StorageMigrationResponse',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              operation_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.operationId',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end