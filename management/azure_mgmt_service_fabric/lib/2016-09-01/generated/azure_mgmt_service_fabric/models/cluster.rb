# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2016_09_01
  module Models
    #
    # The cluster resource
    #
    class Cluster < Resource

      include MsRestAzure

      # @return [Array<ClusterVersionDetails>] The available cluster code
      # version which the cluster can upgrade to, note that you must choose
      # upgradeMode to manual to upgrade to
      attr_accessor :available_cluster_versions

      # @return [String] The unique identifier for the cluster resource
      attr_accessor :cluster_id

      # @return [Enum] The state for the cluster. Possible values include:
      # 'WaitingForNodes', 'Deploying', 'BaselineUpgrade',
      # 'UpdatingUserConfiguration', 'UpdatingUserCertificate',
      # 'UpdatingInfrastructure', 'EnforcingClusterVersion',
      # 'UpgradeServiceUnreachable', 'AutoScale', 'Ready'
      attr_accessor :cluster_state

      # @return [String] The endpoint for the cluster connecting to
      # servicefabric resource provider
      attr_accessor :cluster_endpoint

      # @return [String] The ServiceFabric code version running in your cluster
      attr_accessor :cluster_code_version

      # @return [CertificateDescription] This primay certificate will be used
      # as cluster node to node security, SSL certificate for cluster
      # management endpoint and default admin client
      attr_accessor :certificate

      # @return [Enum] Cluster reliability level indicates replica set size of
      # system service. Possible values include: 'Bronze', 'Silver', 'Gold',
      # 'Platinum'
      attr_accessor :reliability_level

      # @return [Enum] Cluster upgrade mode indicates if fabric upgrade is
      # initiated automatically by the system or not. Possible values include:
      # 'Automatic', 'Manual'
      attr_accessor :upgrade_mode

      # @return [Array<ClientCertificateThumbprint>] The client thumbprint
      # details ,it is used for client access for cluster operation
      attr_accessor :client_certificate_thumbprints

      # @return [Array<ClientCertificateCommonName>]  List of client
      # certificates to whitelist based on common names
      attr_accessor :client_certificate_common_names

      # @return [Array<SettingsSectionDescription>] List of custom fabric
      # settings to configure the cluster.
      attr_accessor :fabric_settings

      # @return [CertificateDescription] The server certificate used by reverse
      # proxy
      attr_accessor :reverse_proxy_certificate

      # @return [String] The http management endpoint of the cluster
      attr_accessor :management_endpoint

      # @return [Array<NodeTypeDescription>] The list of nodetypes that make up
      # the cluster
      attr_accessor :node_types

      # @return [AzureActiveDirectory] The settings to enable AAD
      # authentication on the cluster
      attr_accessor :azure_active_directory

      # @return [ProvisioningState] The provisioning state of the cluster
      # resource. Possible values include: 'Updating', 'Succeeded', 'Failed',
      # 'Canceled'
      attr_accessor :provisioning_state

      # @return [String] The name of VM image VMSS has been configured with.
      # Generic names such as Windows or Linux can be used.
      attr_accessor :vm_image

      # @return [DiagnosticsStorageAccountConfig] The storage diagnostics
      # account configuration details
      attr_accessor :diagnostics_storage_account_config

      # @return [ClusterUpgradePolicy] The policy to use when upgrading the
      # cluster.
      attr_accessor :upgrade_description


      #
      # Mapper for Cluster class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Cluster',
          type: {
            name: 'Composite',
            class_name: 'Cluster',
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
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              available_cluster_versions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.availableClusterVersions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClusterVersionDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClusterVersionDetails'
                      }
                  }
                }
              },
              cluster_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterId',
                type: {
                  name: 'String'
                }
              },
              cluster_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterState',
                type: {
                  name: 'String'
                }
              },
              cluster_endpoint: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.clusterEndpoint',
                type: {
                  name: 'String'
                }
              },
              cluster_code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clusterCodeVersion',
                type: {
                  name: 'String'
                }
              },
              certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.certificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              reliability_level: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reliabilityLevel',
                type: {
                  name: 'String'
                }
              },
              upgrade_mode: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeMode',
                type: {
                  name: 'String'
                }
              },
              client_certificate_thumbprints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateThumbprints',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateThumbprintElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateThumbprint'
                      }
                  }
                }
              },
              client_certificate_common_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.clientCertificateCommonNames',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ClientCertificateCommonNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ClientCertificateCommonName'
                      }
                  }
                }
              },
              fabric_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.fabricSettings',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SettingsSectionDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SettingsSectionDescription'
                      }
                  }
                }
              },
              reverse_proxy_certificate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.reverseProxyCertificate',
                type: {
                  name: 'Composite',
                  class_name: 'CertificateDescription'
                }
              },
              management_endpoint: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.managementEndpoint',
                type: {
                  name: 'String'
                }
              },
              node_types: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.nodeTypes',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NodeTypeDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'NodeTypeDescription'
                      }
                  }
                }
              },
              azure_active_directory: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.azureActiveDirectory',
                type: {
                  name: 'Composite',
                  class_name: 'AzureActiveDirectory'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              vm_image: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vmImage',
                type: {
                  name: 'String'
                }
              },
              diagnostics_storage_account_config: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.diagnosticsStorageAccountConfig',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsStorageAccountConfig'
                }
              },
              upgrade_description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.upgradeDescription',
                type: {
                  name: 'Composite',
                  class_name: 'ClusterUpgradePolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
