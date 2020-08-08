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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdField do
  @moduledoc """
  A quasi-identifier column has a custom_tag, used to know which column in the data corresponds to which column in the statistical model.

  ## Attributes

  *   `customTag` (*type:* `String.t`, *default:* `nil`) - A auxiliary field.
  *   `field` (*type:* `GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t`, *default:* `nil`) - Identifies the column.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customTag => String.t(),
          :field => GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId.t()
        }

  field(:customTag)
  field(:field, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2FieldId)
end

defimpl Poison.Decoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdField do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdField.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiIdField do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
