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

defmodule GoogleApi.CloudIdentity.V1.Model.MembershipRelation do
  @moduledoc """
  Message containing membership relation.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - An extended description to help users determine the purpose of a `Group`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The display name of the `Group`.
  *   `group` (*type:* `String.t`, *default:* `nil`) - The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Group`. Shall be of the form `groups/{group_id}`.
  *   `groupKey` (*type:* `GoogleApi.CloudIdentity.V1.Model.EntityKey.t`, *default:* `nil`) - The `EntityKey` of the `Group`.
  *   `labels` (*type:* `map()`, *default:* `nil`) - One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.
  *   `membership` (*type:* `String.t`, *default:* `nil`) - The [resource name](https://cloud.google.com/apis/design/resource_names) of the `Membership`. Shall be of the form `groups/{group_id}/memberships/{membership_id}`.
  *   `roles` (*type:* `list(GoogleApi.CloudIdentity.V1.Model.MembershipRole.t)`, *default:* `nil`) - The `MembershipRole`s that apply to the `Membership`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :group => String.t() | nil,
          :groupKey => GoogleApi.CloudIdentity.V1.Model.EntityKey.t() | nil,
          :labels => map() | nil,
          :membership => String.t() | nil,
          :roles => list(GoogleApi.CloudIdentity.V1.Model.MembershipRole.t()) | nil
        }

  field(:description)
  field(:displayName)
  field(:group)
  field(:groupKey, as: GoogleApi.CloudIdentity.V1.Model.EntityKey)
  field(:labels, type: :map)
  field(:membership)
  field(:roles, as: GoogleApi.CloudIdentity.V1.Model.MembershipRole, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIdentity.V1.Model.MembershipRelation do
  def decode(value, options) do
    GoogleApi.CloudIdentity.V1.Model.MembershipRelation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIdentity.V1.Model.MembershipRelation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
