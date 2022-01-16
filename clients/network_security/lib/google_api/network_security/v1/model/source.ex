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

defmodule GoogleApi.NetworkSecurity.V1.Model.Source do
  @moduledoc """
  Specification of traffic source attributes.

  ## Attributes

  *   `ipBlocks` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g., "1.2.3.0/24") are supported. Authorization based on source IP alone should be avoided. The IP addresses of any load balancers or proxies should be considered untrusted.
  *   `principals` (*type:* `list(String.t)`, *default:* `nil`) - Optional. List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, "namespace/*") or a suffix match (example, // */service-account") or a presence match "*". Authorization based on the principal name without certificate validation (configured by ServerTlsPolicy resource) is considered insecure.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ipBlocks => list(String.t()) | nil,
          :principals => list(String.t()) | nil
        }

  field(:ipBlocks, type: :list)
  field(:principals, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkSecurity.V1.Model.Source do
  def decode(value, options) do
    GoogleApi.NetworkSecurity.V1.Model.Source.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkSecurity.V1.Model.Source do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
