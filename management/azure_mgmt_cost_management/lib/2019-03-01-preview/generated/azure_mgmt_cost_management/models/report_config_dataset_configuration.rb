# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CostManagement::Mgmt::V2019_03_01_preview
  module Models
    #
    # The configuration of dataset in the report.
    #
    class ReportConfigDatasetConfiguration

      include MsRestAzure

      # @return [Array<String>] Array of column names to be included in the
      # report. Any valid report column name is allowed. If not provided, then
      # report includes all columns.
      attr_accessor :columns


      #
      # Mapper for ReportConfigDatasetConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReportConfigDatasetConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ReportConfigDatasetConfiguration',
            model_properties: {
              columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'columns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end