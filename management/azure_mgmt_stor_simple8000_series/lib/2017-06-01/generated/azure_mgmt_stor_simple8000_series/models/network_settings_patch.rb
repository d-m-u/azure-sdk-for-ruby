# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # Represents the patch request for the network settings of a device.
    #
    class NetworkSettingsPatch

      include MsRestAzure

      # @return [DNSSettings] The DNS (Domain Name System) settings of device.
      attr_accessor :dns_settings

      # @return [NetworkAdapterList] The network adapter list of device.
      attr_accessor :network_adapters


      #
      # Mapper for NetworkSettingsPatch class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NetworkSettingsPatch',
          type: {
            name: 'Composite',
            class_name: 'NetworkSettingsPatch',
            model_properties: {
              dns_settings: {
                required: false,
                serialized_name: 'properties.dnsSettings',
                type: {
                  name: 'Composite',
                  class_name: 'DNSSettings'
                }
              },
              network_adapters: {
                required: false,
                serialized_name: 'properties.networkAdapters',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkAdapterList'
                }
              }
            }
          }
        }
      end
    end
  end
end