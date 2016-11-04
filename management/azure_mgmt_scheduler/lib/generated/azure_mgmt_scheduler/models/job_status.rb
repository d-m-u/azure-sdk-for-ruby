# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class JobStatus

      include MsRestAzure

      # @return [Integer] Gets the number of times this job has executed.
      attr_accessor :execution_count

      # @return [Integer] Gets the number of times this job has failed.
      attr_accessor :failure_count

      # @return [Integer] Gets the number of faulted occurrences (occurrences
      # that were retried and failed as many times as the retry policy
      # states).
      attr_accessor :faulted_count

      # @return [DateTime] Gets the time the last occurrence executed in
      # ISO-8601 format.  Could be empty if job has not run yet.
      attr_accessor :last_execution_time

      # @return [DateTime] Gets the time of the next occurrence in ISO-8601
      # format. Could be empty if the job is completed.
      attr_accessor :next_execution_time


      #
      # Mapper for JobStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobStatus',
          type: {
            name: 'Composite',
            class_name: 'JobStatus',
            model_properties: {
              execution_count: {
                required: false,
                read_only: true,
                serialized_name: 'executionCount',
                type: {
                  name: 'Number'
                }
              },
              failure_count: {
                required: false,
                read_only: true,
                serialized_name: 'failureCount',
                type: {
                  name: 'Number'
                }
              },
              faulted_count: {
                required: false,
                read_only: true,
                serialized_name: 'faultedCount',
                type: {
                  name: 'Number'
                }
              },
              last_execution_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastExecutionTime',
                type: {
                  name: 'DateTime'
                }
              },
              next_execution_time: {
                required: false,
                read_only: true,
                serialized_name: 'nextExecutionTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
