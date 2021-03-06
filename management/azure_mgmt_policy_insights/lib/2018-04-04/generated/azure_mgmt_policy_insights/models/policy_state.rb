# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::PolicyInsights::Mgmt::V2018_04_04
  module Models
    #
    # Policy state record.
    #
    class PolicyState

      include MsRestAzure

      # @return Unmatched properties from the message are deserialized this
      # collection
      attr_accessor :additional_properties

      # @return [String] OData entity ID; always set to null since policy state
      # records do not have an entity ID.
      attr_accessor :odataid

      # @return [String] OData context string; used by OData clients to resolve
      # type information based on metadata.
      attr_accessor :odatacontext

      # @return [DateTime] Timestamp for the policy state record.
      attr_accessor :timestamp

      # @return [String] Resource ID.
      attr_accessor :resource_id

      # @return [String] Policy assignment ID.
      attr_accessor :policy_assignment_id

      # @return [String] Policy definition ID.
      attr_accessor :policy_definition_id

      # @return [String] Effective parameters for the policy assignment.
      attr_accessor :effective_parameters

      # @return [Boolean] Flag which states whether the resource is compliant
      # against the policy assignment it was evaluated against.
      attr_accessor :is_compliant

      # @return [String] Subscription ID.
      attr_accessor :subscription_id

      # @return [String] Resource type.
      attr_accessor :resource_type

      # @return [String] Resource location.
      attr_accessor :resource_location

      # @return [String] Resource group name.
      attr_accessor :resource_group

      # @return [String] List of resource tags.
      attr_accessor :resource_tags

      # @return [String] Policy assignment name.
      attr_accessor :policy_assignment_name

      # @return [String] Policy assignment owner.
      attr_accessor :policy_assignment_owner

      # @return [String] Policy assignment parameters.
      attr_accessor :policy_assignment_parameters

      # @return [String] Policy assignment scope.
      attr_accessor :policy_assignment_scope

      # @return [String] Policy definition name.
      attr_accessor :policy_definition_name

      # @return [String] Policy definition action, i.e. effect.
      attr_accessor :policy_definition_action

      # @return [String] Policy definition category.
      attr_accessor :policy_definition_category

      # @return [String] Policy set definition ID, if the policy assignment is
      # for a policy set.
      attr_accessor :policy_set_definition_id

      # @return [String] Policy set definition name, if the policy assignment
      # is for a policy set.
      attr_accessor :policy_set_definition_name

      # @return [String] Policy set definition owner, if the policy assignment
      # is for a policy set.
      attr_accessor :policy_set_definition_owner

      # @return [String] Policy set definition category, if the policy
      # assignment is for a policy set.
      attr_accessor :policy_set_definition_category

      # @return [String] Policy set definition parameters, if the policy
      # assignment is for a policy set.
      attr_accessor :policy_set_definition_parameters

      # @return [String] Comma separated list of management group IDs, which
      # represent the hierarchy of the management groups the resource is under.
      attr_accessor :management_group_ids

      # @return [String] Reference ID for the policy definition inside the
      # policy set, if the policy assignment is for a policy set.
      attr_accessor :policy_definition_reference_id


      #
      # Mapper for PolicyState class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PolicyState',
          type: {
            name: 'Composite',
            class_name: 'PolicyState',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              odataid: {
                client_side_validation: true,
                required: false,
                serialized_name: '@odata\\.id',
                type: {
                  name: 'String'
                }
              },
              odatacontext: {
                client_side_validation: true,
                required: false,
                serialized_name: '@odata\\.context',
                type: {
                  name: 'String'
                }
              },
              timestamp: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timestamp',
                type: {
                  name: 'DateTime'
                }
              },
              resource_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              policy_assignment_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyAssignmentId',
                type: {
                  name: 'String'
                }
              },
              policy_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyDefinitionId',
                type: {
                  name: 'String'
                }
              },
              effective_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'effectiveParameters',
                type: {
                  name: 'String'
                }
              },
              is_compliant: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isCompliant',
                type: {
                  name: 'Boolean'
                }
              },
              subscription_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subscriptionId',
                type: {
                  name: 'String'
                }
              },
              resource_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceType',
                type: {
                  name: 'String'
                }
              },
              resource_location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceLocation',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceGroup',
                type: {
                  name: 'String'
                }
              },
              resource_tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resourceTags',
                type: {
                  name: 'String'
                }
              },
              policy_assignment_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyAssignmentName',
                type: {
                  name: 'String'
                }
              },
              policy_assignment_owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyAssignmentOwner',
                type: {
                  name: 'String'
                }
              },
              policy_assignment_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyAssignmentParameters',
                type: {
                  name: 'String'
                }
              },
              policy_assignment_scope: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyAssignmentScope',
                type: {
                  name: 'String'
                }
              },
              policy_definition_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyDefinitionName',
                type: {
                  name: 'String'
                }
              },
              policy_definition_action: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyDefinitionAction',
                type: {
                  name: 'String'
                }
              },
              policy_definition_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyDefinitionCategory',
                type: {
                  name: 'String'
                }
              },
              policy_set_definition_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policySetDefinitionId',
                type: {
                  name: 'String'
                }
              },
              policy_set_definition_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policySetDefinitionName',
                type: {
                  name: 'String'
                }
              },
              policy_set_definition_owner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policySetDefinitionOwner',
                type: {
                  name: 'String'
                }
              },
              policy_set_definition_category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policySetDefinitionCategory',
                type: {
                  name: 'String'
                }
              },
              policy_set_definition_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policySetDefinitionParameters',
                type: {
                  name: 'String'
                }
              },
              management_group_ids: {
                client_side_validation: true,
                required: false,
                serialized_name: 'managementGroupIds',
                type: {
                  name: 'String'
                }
              },
              policy_definition_reference_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policyDefinitionReferenceId',
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
