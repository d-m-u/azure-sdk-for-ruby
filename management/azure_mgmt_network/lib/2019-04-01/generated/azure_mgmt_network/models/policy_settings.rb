# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_04_01
  module Models
    #
    # Defines contents of a web application firewall global configuration.
    #
    class PolicySettings

      include MsRestAzure

      # @return [WebApplicationFirewallEnabledState] Describes if the policy is
      # in enabled state or disabled state. Possible values include:
      # 'Disabled', 'Enabled'
      attr_accessor :enabled_state

      # @return [WebApplicationFirewallMode] Describes if it is in detection
      # mode or prevention mode at policy level. Possible values include:
      # 'Prevention', 'Detection'
      attr_accessor :mode


      #
      # Mapper for PolicySettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicySettings',
          type: {
            name: 'Composite',
            class_name: 'PolicySettings',
            model_properties: {
              enabled_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'enabledState',
                type: {
                  name: 'String'
                }
              },
              mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'mode',
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
