# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventHub::Mgmt::V2018_01_01_preview
  module Models
    #
    # Properties to configure Encryption
    #
    class Encryption

      include MsRestAzure

      # @return [KeyVaultProperties] Properties of KeyVault
      attr_accessor :key_vault_properties

      # @return [KeySource] Enumerates the possible value of keySource for
      # Encryption. Possible values include: 'Microsoft.KeyVault'. Default
      # value: 'Microsoft.KeyVault' .
      attr_accessor :key_source


      #
      # Mapper for Encryption class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Encryption',
          type: {
            name: 'Composite',
            class_name: 'Encryption',
            model_properties: {
              key_vault_properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keyVaultProperties',
                type: {
                  name: 'Composite',
                  class_name: 'KeyVaultProperties'
                }
              },
              key_source: {
                client_side_validation: true,
                required: false,
                serialized_name: 'keySource',
                default_value: 'Microsoft.KeyVault',
                type: {
                  name: 'Enum',
                  module: 'KeySource'
                }
              }
            }
          }
        }
      end
    end
  end
end
