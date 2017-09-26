# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    #
    class Dimension

      include MsRestAzure

      include MsRest::JSONable
      # @return [String]
      attr_accessor :name

      # @return [String]
      attr_accessor :display_name

      # @return [String]
      attr_accessor :internal_name

      # @return [Boolean]
      attr_accessor :to_be_exported_for_shoebox


      #
      # Mapper for Dimension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Dimension',
          type: {
            name: 'Composite',
            class_name: 'Dimension',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              internal_name: {
                required: false,
                serialized_name: 'internalName',
                type: {
                  name: 'String'
                }
              },
              to_be_exported_for_shoebox: {
                required: false,
                serialized_name: 'toBeExportedForShoebox',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end