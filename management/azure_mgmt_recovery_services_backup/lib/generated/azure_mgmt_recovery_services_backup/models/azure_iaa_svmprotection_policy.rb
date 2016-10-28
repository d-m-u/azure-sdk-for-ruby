# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # IaaS VM workload-specific backup policy.
    #
    class AzureIaaSVMProtectionPolicy < ProtectionPolicy

      include MsRestAzure


      def initialize
        @backupManagementType = "AzureIaasVM"
      end

      attr_accessor :backupManagementType

      # @return [SchedulePolicy] Backup schedule specified as part of backup
      # policy.
      attr_accessor :schedule_policy

      # @return [RetentionPolicy] Retention policy with the details on backup
      # copy retention ranges.
      attr_accessor :retention_policy


      #
      # Mapper for AzureIaaSVMProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureIaasVM',
          type: {
            name: 'Composite',
            class_name: 'AzureIaaSVMProtectionPolicy',
            model_properties: {
              protected_items_count: {
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              },
              backupManagementType: {
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              schedule_policy: {
                required: false,
                serialized_name: 'schedulePolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'schedulePolicyType',
                  uber_parent: 'SchedulePolicy',
                  class_name: 'SchedulePolicy'
                }
              },
              retention_policy: {
                required: false,
                serialized_name: 'retentionPolicy',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'retentionPolicyType',
                  uber_parent: 'RetentionPolicy',
                  class_name: 'RetentionPolicy'
                }
              }
            }
          }
        }
      end
    end
  end
end
