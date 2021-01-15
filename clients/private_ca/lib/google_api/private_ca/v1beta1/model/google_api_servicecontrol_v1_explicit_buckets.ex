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

defmodule GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ExplicitBuckets do
  @moduledoc """
  Describing buckets with arbitrary user-provided width.

  ## Attributes

  *   `bounds` (*type:* `list(float())`, *default:* `nil`) - 'bound' is a list of strictly increasing boundaries between buckets. Note that a list of length N-1 defines N buckets because of fenceposting. See comments on `bucket_options` for details. The i'th finite bucket covers the interval [bound[i-1], bound[i]) where i ranges from 1 to bound_size() - 1. Note that there are no finite buckets at all if 'bound' only contains a single element; in that special case the single bound defines the boundary between the underflow and overflow buckets. bucket number lower bound upper bound i == 0 (underflow) -inf bound[i] 0 < i < bound_size() bound[i-1] bound[i] i == bound_size() (overflow) bound[i-1] +inf
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bounds => list(float())
        }

  field(:bounds, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ExplicitBuckets do
  def decode(value, options) do
    GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ExplicitBuckets.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PrivateCA.V1beta1.Model.GoogleApiServicecontrolV1ExplicitBuckets do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
