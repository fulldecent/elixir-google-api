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

defmodule GoogleApi.Jobs.V3.Model.MendelDebugInput do
  @moduledoc """
  Message representing input to a Mendel server for debug forcing. See go/mendel-debug-forcing for more details. Next ID: 2

  ## Attributes

  *   `namespacedDebugInput` (*type:* `%{optional(String.t) => GoogleApi.Jobs.V3.Model.NamespacedDebugInput.t}`, *default:* `nil`) - When a request spans multiple servers, a MendelDebugInput may travel with the request and take effect in all the servers. This field is a map of namespaces to NamespacedMendelDebugInput protos. In a single server, up to two NamespacedMendelDebugInput protos are applied: 1. NamespacedMendelDebugInput with the global namespace (key == ""). 2. NamespacedMendelDebugInput with the server's namespace. When both NamespacedMendelDebugInput protos are present, they are merged. See go/mendel-debug-forcing for more details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namespacedDebugInput => %{
            optional(String.t()) => GoogleApi.Jobs.V3.Model.NamespacedDebugInput.t()
          }
        }

  field(:namespacedDebugInput, as: GoogleApi.Jobs.V3.Model.NamespacedDebugInput, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V3.Model.MendelDebugInput do
  def decode(value, options) do
    GoogleApi.Jobs.V3.Model.MendelDebugInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V3.Model.MendelDebugInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
