# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # MAB workload-specific backup item.
    #
    class MabFileFolderProtectedItem < ProtectedItem

      include MsRestAzure


      def initialize
        @protectedItemType = "MabFileFolderProtectedItem"
      end

      attr_accessor :protectedItemType

      # @return [String] Friendly name of this backup item.
      attr_accessor :friendly_name

      # @return [String] Name of the computer associated with this backup item.
      attr_accessor :computer_name

      # @return [String] Status of last backup operation.
      attr_accessor :last_backup_status

      # @return [String] Protected, ProtectionStopped, IRPending or
      # ProtectionError
      attr_accessor :protection_state

      # @return [Boolean]
      attr_accessor :is_scheduled_for_deferred_delete

      # @return [MabFileFolderProtectedItemExtendedInfo] Additional
      # information with this backup item.
      attr_accessor :extended_info


      #
      # Mapper for MabFileFolderProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MabFileFolderProtectedItem',
          type: {
            name: 'Composite',
            class_name: 'MabFileFolderProtectedItem',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'Enum',
                  module: 'DataSourceType'
                }
              },
              source_resource_id: {
                required: false,
                serialized_name: 'sourceResourceId',
                type: {
                  name: 'String'
                }
              },
              policy_id: {
                required: false,
                serialized_name: 'policyId',
                type: {
                  name: 'String'
                }
              },
              last_recovery_point: {
                required: false,
                serialized_name: 'lastRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              protectedItemType: {
                required: true,
                serialized_name: 'protectedItemType',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
                type: {
                  name: 'String'
                }
              },
              computer_name: {
                required: false,
                serialized_name: 'computerName',
                type: {
                  name: 'String'
                }
              },
              last_backup_status: {
                required: false,
                serialized_name: 'lastBackupStatus',
                type: {
                  name: 'String'
                }
              },
              protection_state: {
                required: false,
                serialized_name: 'protectionState',
                type: {
                  name: 'String'
                }
              },
              is_scheduled_for_deferred_delete: {
                required: false,
                serialized_name: 'isScheduledForDeferredDelete',
                type: {
                  name: 'Boolean'
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'MabFileFolderProtectedItemExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
