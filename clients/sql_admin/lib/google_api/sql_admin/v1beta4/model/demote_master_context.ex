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

defmodule GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterContext do
  @moduledoc """
  Database instance demote primary instance context.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - This is always *sql#demoteMasterContext*.
  *   `masterInstanceName` (*type:* `String.t`, *default:* `nil`) - The name of the instance which will act as on-premises primary instance in the replication setup.
  *   `replicaConfiguration` (*type:* `GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration.t`, *default:* `nil`) - Configuration specific to read-replicas replicating from the on-premises primary instance.
  *   `skipReplicationSetup` (*type:* `boolean()`, *default:* `nil`) - Flag to skip replication setup on the instance.
  *   `verifyGtidConsistency` (*type:* `boolean()`, *default:* `nil`) - Verify GTID consistency for demote operation. Default value: *True*. Setting this flag to false enables you to bypass GTID consistency check between on-premises primary instance and Cloud SQL instance during the demotion operation but also exposes you to the risk of future replication failures. Change the value only if you know the reason for the GTID divergence and are confident that doing so will not cause any replication issues.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t() | nil,
          :masterInstanceName => String.t() | nil,
          :replicaConfiguration =>
            GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration.t() | nil,
          :skipReplicationSetup => boolean() | nil,
          :verifyGtidConsistency => boolean() | nil
        }

  field(:kind)
  field(:masterInstanceName)
  field(:replicaConfiguration, as: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterConfiguration)
  field(:skipReplicationSetup)
  field(:verifyGtidConsistency)
end

defimpl Poison.Decoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterContext do
  def decode(value, options) do
    GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterContext.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SQLAdmin.V1beta4.Model.DemoteMasterContext do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
