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

defmodule GoogleApi.Compute.V1.Model.HttpRetryPolicy do
  @moduledoc """
  The retry policy associates with HttpRouteRule

  ## Attributes

  *   `numRetries` (*type:* `integer()`, *default:* `nil`) - Specifies the allowed number retries. This number must be > 0. If not specified, defaults to 1.
  *   `perTryTimeout` (*type:* `GoogleApi.Compute.V1.Model.Duration.t`, *default:* `nil`) - Specifies a non-zero timeout per retry attempt.
      If not specified, will use the timeout set in HttpRouteAction. If timeout in HttpRouteAction is not set, will use the largest timeout among all backend services associated with the route.
  *   `retryConditions` (*type:* `list(String.t)`, *default:* `nil`) - Specifies one or more conditions when this retry rule applies. Valid values are:  
      - 5xx: Loadbalancer will attempt a retry if the backend service responds with any 5xx response code, or if the backend service does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams. 
      - gateway-error: Similar to 5xx, but only applies to response codes 502, 503 or 504.
      - 
      - connect-failure: Loadbalancer will retry on failures connecting to backend services, for example due to connection timeouts. 
      - retriable-4xx: Loadbalancer will retry for retriable 4xx response codes. Currently the only retriable error supported is 409. 
      - refused-stream:Loadbalancer will retry if the backend service resets the stream with a REFUSED_STREAM error code. This reset type indicates that it is safe to retry. 
      - cancelledLoadbalancer will retry if the gRPC status code in the response header is set to cancelled 
      - deadline-exceeded: Loadbalancer will retry if the gRPC status code in the response header is set to deadline-exceeded 
      - resource-exhausted: Loadbalancer will retry if the gRPC status code in the response header is set to resource-exhausted 
      - unavailable: Loadbalancer will retry if the gRPC status code in the response header is set to unavailable
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :numRetries => integer() | nil,
          :perTryTimeout => GoogleApi.Compute.V1.Model.Duration.t() | nil,
          :retryConditions => list(String.t()) | nil
        }

  field(:numRetries)
  field(:perTryTimeout, as: GoogleApi.Compute.V1.Model.Duration)
  field(:retryConditions, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.HttpRetryPolicy do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.HttpRetryPolicy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.HttpRetryPolicy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
