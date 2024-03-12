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

defmodule GoogleApi.CloudAsset.V1.Model.VersionedResource do
  @moduledoc """
  Resource representation as defined by the corresponding service providing the resource for a given API version.

  ## Attributes

  *   `resource` (*type:* `map()`, *default:* `nil`) - JSON representation of the resource as defined by the corresponding service providing this resource. Example: If the resource is an instance provided by Compute Engine, this field will contain the JSON representation of the instance as defined by Compute Engine: `https://cloud.google.com/compute/docs/reference/rest/v1/instances`. You can find the resource definition for each supported resource type in this table: `https://cloud.google.com/asset-inventory/docs/supported-asset-types`
  *   `version` (*type:* `String.t`, *default:* `nil`) - API version of the resource. Example: If the resource is an instance provided by Compute Engine v1 API as defined in `https://cloud.google.com/compute/docs/reference/rest/v1/instances`, version will be "v1".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :resource => map() | nil,
          :version => String.t() | nil
        }

  field(:resource, type: :map)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.VersionedResource do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.VersionedResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.VersionedResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
