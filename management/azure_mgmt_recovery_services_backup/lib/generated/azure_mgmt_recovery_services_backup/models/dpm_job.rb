# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # DPM workload-specifc job object.
    #
    class DpmJob < Job

      include MsRestAzure


      def initialize
        @jobType = "DpmJob"
      end

      attr_accessor :jobType

      # @return [Duration] Time elapsed for job.
      attr_accessor :duration

      # @return [String] DPM server name managing the backup item or backup
      # job.
      attr_accessor :dpm_server_name

      # @return [String] Name of cluster/server protecting current backup
      # item, if any.
      attr_accessor :container_name

      # @return [String] Type of container.
      attr_accessor :container_type

      # @return [String] Type of backup item.
      attr_accessor :workload_type

      # @return [Array<JobSupportedAction>] The state/actions applicable on
      # this job like cancel/retry.
      attr_accessor :actions_info

      # @return [Array<DpmErrorInfo>] The errors.
      attr_accessor :error_details

      # @return [DpmJobExtendedInfo] Additional information for this job.
      attr_accessor :extended_info


      #
      # Mapper for DpmJob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DpmJob',
          type: {
            name: 'Composite',
            class_name: 'DpmJob',
            model_properties: {
              entity_friendly_name: {
                required: false,
                serialized_name: 'entityFriendlyName',
                type: {
                  name: 'String'
                }
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'Enum',
                  module: 'BackupManagementType'
                }
              },
              operation: {
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              activity_id: {
                required: false,
                serialized_name: 'activityId',
                type: {
                  name: 'String'
                }
              },
              jobType: {
                required: true,
                serialized_name: 'jobType',
                type: {
                  name: 'String'
                }
              },
              duration: {
                required: false,
                serialized_name: 'duration',
                type: {
                  name: 'TimeSpan'
                }
              },
              dpm_server_name: {
                required: false,
                serialized_name: 'dpmServerName',
                type: {
                  name: 'String'
                }
              },
              container_name: {
                required: false,
                serialized_name: 'containerName',
                type: {
                  name: 'String'
                }
              },
              container_type: {
                required: false,
                serialized_name: 'containerType',
                type: {
                  name: 'String'
                }
              },
              workload_type: {
                required: false,
                serialized_name: 'workloadType',
                type: {
                  name: 'String'
                }
              },
              actions_info: {
                required: false,
                serialized_name: 'actionsInfo',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'JobSupportedActionElementType',
                      type: {
                        name: 'Enum',
                        module: 'JobSupportedAction'
                      }
                  }
                }
              },
              error_details: {
                required: false,
                serialized_name: 'errorDetails',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DpmErrorInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'DpmErrorInfo'
                      }
                  }
                }
              },
              extended_info: {
                required: false,
                serialized_name: 'extendedInfo',
                type: {
                  name: 'Composite',
                  class_name: 'DpmJobExtendedInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
