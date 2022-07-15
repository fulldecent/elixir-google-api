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

defmodule GoogleApi.BareMetalSolution.V2.Model.VRF do
  @moduledoc """
  A network VRF.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the VRF.
  *   `qosPolicy` (*type:* `GoogleApi.BareMetalSolution.V2.Model.QosPolicy.t`, *default:* `nil`) - The QOS policy applied to this VRF.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The possible state of VRF.
  *   `vlanAttachments` (*type:* `list(GoogleApi.BareMetalSolution.V2.Model.VlanAttachment.t)`, *default:* `nil`) - The list of VLAN attachments for the VRF.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :qosPolicy => GoogleApi.BareMetalSolution.V2.Model.QosPolicy.t() | nil,
          :state => String.t() | nil,
          :vlanAttachments => list(GoogleApi.BareMetalSolution.V2.Model.VlanAttachment.t()) | nil
        }

  field(:name)
  field(:qosPolicy, as: GoogleApi.BareMetalSolution.V2.Model.QosPolicy)
  field(:state)
  field(:vlanAttachments, as: GoogleApi.BareMetalSolution.V2.Model.VlanAttachment, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.BareMetalSolution.V2.Model.VRF do
  def decode(value, options) do
    GoogleApi.BareMetalSolution.V2.Model.VRF.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BareMetalSolution.V2.Model.VRF do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
