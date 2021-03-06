# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  module Models
    #
    # The parameters supplied to the update variable operation.
    #
    class VariableUpdateParameters

      include MsRestAzure

      # @return [String] Gets or sets the name of the variable.
      attr_accessor :name

      # @return [String] Gets or sets the value of the variable.
      attr_accessor :value

      # @return [String] Gets or sets the description of the variable.
      attr_accessor :description


      #
      # Mapper for VariableUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VariableUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'VariableUpdateParameters',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.value',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.description',
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
