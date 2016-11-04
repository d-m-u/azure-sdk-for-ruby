# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Scheduler
  module Models
    #
    # Model object.
    #
    class JobStateFilter

      include MsRestAzure

      # @return [JobState] Gets or sets the job state. Possible values
      # include: 'Enabled', 'Disabled', 'Faulted', 'Completed'
      attr_accessor :state


      #
      # Mapper for JobStateFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobStateFilter',
          type: {
            name: 'Composite',
            class_name: 'JobStateFilter',
            model_properties: {
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'JobState'
                }
              }
            }
          }
        }
      end
    end
  end
end
