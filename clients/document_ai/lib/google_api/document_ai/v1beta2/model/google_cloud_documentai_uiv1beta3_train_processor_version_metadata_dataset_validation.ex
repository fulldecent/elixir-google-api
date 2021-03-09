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

defmodule GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation do
  @moduledoc """
  The dataset validation information. This includes any and all errors with documents and the dataset.

  ## Attributes

  *   `datasetErrors` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Error information for the dataset as a whole. A maximum of 10 dataset errors will be returned. A single dataset error is terminal for training.
  *   `documentErrors` (*type:* `list(GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus.t)`, *default:* `nil`) - Error information pertaining to specific documents. A maximum of 10 document errors will be returned. Any document with errors will not be used throughout training.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :datasetErrors => list(GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus.t()) | nil,
          :documentErrors => list(GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus.t()) | nil
        }

  field(:datasetErrors, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus, type: :list)
  field(:documentErrors, as: GoogleApi.DocumentAI.V1beta2.Model.GoogleRpcStatus, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DocumentAI.V1beta2.Model.GoogleCloudDocumentaiUiv1beta3TrainProcessorVersionMetadataDatasetValidation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
