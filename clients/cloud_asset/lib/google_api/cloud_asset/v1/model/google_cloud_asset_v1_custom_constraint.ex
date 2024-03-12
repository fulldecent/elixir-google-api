# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint do
  @moduledoc """
  The definition of a custom constraint.

  ## Attributes

  *   `actionType` (*type:* `String.t`, *default:* `nil`) - Allow or deny type.
  *   `condition` (*type:* `String.t`, *default:* `nil`) - Organization Policy condition/expression. For example: `resource.instanceName.matches("[production|test]_.*_(\\d)+")'` or, `resource.management.auto_upgrade == true`
  *   `description` (*type:* `String.t`, *default:* `nil`) - Detailed information about this custom policy constraint.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - One line display name for the UI.
  *   `methodTypes` (*type:* `list(String.t)`, *default:* `nil`) - All the operations being applied for this constraint.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the constraint. This is unique within the organization. Format of the name should be * `organizations/{organization_id}/customConstraints/{custom_constraint_id}` Example : "organizations/123/customConstraints/custom.createOnlyE2TypeVms"
  *   `resourceTypes` (*type:* `list(String.t)`, *default:* `nil`) - The Resource Instance type on which this policy applies to. Format will be of the form : "/" Example: * `compute.googleapis.com/Instance`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionType => String.t() | nil,
          :condition => String.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :methodTypes => list(String.t()) | nil,
          :name => String.t() | nil,
          :resourceTypes => list(String.t()) | nil
        }

  field(:actionType)
  field(:condition)
  field(:description)
  field(:displayName)
  field(:methodTypes, type: :list)
  field(:name)
  field(:resourceTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1CustomConstraint do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
