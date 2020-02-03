# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::AzureStack::Mgmt::V2017_06_01
  module Models
    #
    # Product compatibility
    #
    class Compatibility

      include MsRestAzure

      # @return [Boolean] Tells if product is compatible with current device
      attr_accessor :is_compatible

      # @return [String] Short error message if any compatibility issues are
      # found
      attr_accessor :message

      # @return [String] Full error message if any compatibility issues are
      # found
      attr_accessor :description

      # @return [Array<CompatibilityIssue>] List of all issues found
      attr_accessor :issues


      #
      # Mapper for Compatibility class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Compatibility',
          type: {
            name: 'Composite',
            class_name: 'Compatibility',
            model_properties: {
              is_compatible: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isCompatible',
                type: {
                  name: 'Boolean'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              issues: {
                client_side_validation: true,
                required: false,
                serialized_name: 'issues',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CompatibilityIssueElementType',
                      type: {
                        name: 'String'
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