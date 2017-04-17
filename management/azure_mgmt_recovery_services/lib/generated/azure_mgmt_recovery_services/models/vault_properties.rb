# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.1.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Properties of the vault.
    #
    class VaultProperties

      include MsRestAzure

      # @return [String] Provisioning State.
      attr_accessor :provisioning_state


      #
      # Mapper for VaultProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VaultProperties',
          type: {
            name: 'Composite',
            class_name: 'VaultProperties',
            model_properties: {
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
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