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

defmodule GoogleApi.Eventarc.V1.Model.GoogleChannelConfig do
  @moduledoc """
  A GoogleChannelConfig is a resource that stores the custom settings respected by Eventarc first-party triggers in the matching region. Once configured, first-party event data will be protected using the specified custom managed encryption key instead of Google-managed encryption keys.

  ## Attributes

  *   `cryptoKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last-modified time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cryptoKeyName => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:cryptoKeyName)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Eventarc.V1.Model.GoogleChannelConfig do
  def decode(value, options) do
    GoogleApi.Eventarc.V1.Model.GoogleChannelConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Eventarc.V1.Model.GoogleChannelConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
