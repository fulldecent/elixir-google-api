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

defmodule GoogleApi.CloudBuild.V1.Model.GitFileSource do
  @moduledoc """
  GitFileSource describes a file within a (possibly remote) code repository.

  ## Attributes

  *   `bitbucketServerConfig` (*type:* `String.t`, *default:* `nil`) - The full resource name of the bitbucket server config. Format: `projects/{project}/locations/{location}/bitbucketServerConfigs/{id}`.
  *   `githubEnterpriseConfig` (*type:* `String.t`, *default:* `nil`) - The full resource name of the github enterprise config. Format: `projects/{project}/locations/{location}/githubEnterpriseConfigs/{id}`. `projects/{project}/githubEnterpriseConfigs/{id}`.
  *   `path` (*type:* `String.t`, *default:* `nil`) - The path of the file, with the repo root as the root of the path.
  *   `repoType` (*type:* `String.t`, *default:* `nil`) - See RepoType above.
  *   `revision` (*type:* `String.t`, *default:* `nil`) - The branch, tag, arbitrary ref, or SHA version of the repo to use when resolving the filename (optional). This field respects the same syntax/resolution as described here: https://git-scm.com/docs/gitrevisions If unspecified, the revision from which the trigger invocation originated is assumed to be the revision from which to read the specified path.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - The URI of the repo. Either uri or repository can be specified. If unspecified, the repo from which the trigger invocation originated is assumed to be the repo from which to read the specified path.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bitbucketServerConfig => String.t() | nil,
          :githubEnterpriseConfig => String.t() | nil,
          :path => String.t() | nil,
          :repoType => String.t() | nil,
          :revision => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:bitbucketServerConfig)
  field(:githubEnterpriseConfig)
  field(:path)
  field(:repoType)
  field(:revision)
  field(:uri)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.GitFileSource do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.GitFileSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.GitFileSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
