# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hanaonazure::Mgmt::V2017_11_03_preview
  module Models
    #
    # Specifies the IP address of the network interface.
    #
    class IpAddress

      include MsRestAzure

      # @return [String] Specifies the IP address of the network interface.
      attr_accessor :ip_address


      #
      # Mapper for IpAddress class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'IpAddress',
          type: {
            name: 'Composite',
            class_name: 'IpAddress',
            model_properties: {
              ip_address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ipAddress',
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