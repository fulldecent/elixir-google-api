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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformation do
  @moduledoc """
  A transformation to apply to text that is identified as a specific info_type.

  ## Attributes

  *   `infoTypes` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t)`, *default:* `nil`) - InfoTypes to apply the transformation to. An empty list will cause this transformation to apply to all findings that correspond to infoTypes that were requested in `InspectConfig`.
  *   `primitiveTransformation` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t`, *default:* `nil`) - Required. Primitive transformation to apply to the infoType.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :infoTypes => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType.t()),
          :primitiveTransformation =>
            GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation.t()
        }

  field(:infoTypes, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoType, type: :list)

  field(:primitiveTransformation,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2PrimitiveTransformation
  )
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformation do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2InfoTypeTransformation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
