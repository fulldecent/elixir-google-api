# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse do
  @moduledoc """
  Response for the `ListFindings` method.

  ## Attributes

  *   `findings` (*type:* `list(GoogleApi.WebSecurityScanner.V1alpha.Model.Finding.t)`, *default:* `nil`) - The list of Findings returned.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no
      more results in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :findings => list(GoogleApi.WebSecurityScanner.V1alpha.Model.Finding.t()),
          :nextPageToken => String.t()
        }

  field(:findings, as: GoogleApi.WebSecurityScanner.V1alpha.Model.Finding, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse do
  def decode(value, options) do
    GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WebSecurityScanner.V1alpha.Model.ListFindingsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
