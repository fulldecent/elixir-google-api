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

defmodule GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationConfig do
  @moduledoc """
  δ-presence metric, used to estimate how likely it is for an attacker to figure out that one given individual appears in a de-identified dataset. Similarly to the k-map metric, we cannot compute δ-presence exactly without knowing the attack dataset, so we use a statistical model instead.

  ## Attributes

  *   `auxiliaryTables` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable.t)`, *default:* `nil`) - Several auxiliary tables can be used in the analysis. Each custom_tag used to tag a quasi-identifiers field must appear in exactly one field of one auxiliary table.
  *   `quasiIds` (*type:* `list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiId.t)`, *default:* `nil`) - Required. Fields considered to be quasi-identifiers. No two fields can have the same tag.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - ISO 3166-1 alpha-2 region code to use in the statistical modeling. Set if no column is tagged with a region-specific InfoType (like US_ZIP_5) or a region code.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auxiliaryTables => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable.t()),
          :quasiIds => list(GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiId.t()),
          :regionCode => String.t()
        }

  field(:auxiliaryTables,
    as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2StatisticalTable,
    type: :list
  )

  field(:quasiIds, as: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2QuasiId, type: :list)
  field(:regionCode)
end

defimpl Poison.Decoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationConfig do
  def decode(value, options) do
    GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DLP.V2.Model.GooglePrivacyDlpV2DeltaPresenceEstimationConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
