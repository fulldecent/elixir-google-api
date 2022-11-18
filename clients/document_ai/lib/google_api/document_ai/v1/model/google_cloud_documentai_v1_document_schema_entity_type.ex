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

defmodule GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityType do
  @moduledoc """
  EntityType is the wrapper of a label of the corresponding model with detailed attributes and limitations for entity-based processors. Multiple types can also compose a dependency tree to represent nested types.

  ## Attributes

  *   `baseTypes` (*type:* `list(String.t)`, *default:* `nil`) - The entity type that this type is derived from. For now, one and only one should be set.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - User defined name for the type.
  *   `enumValues` (*type:* `GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues.t`, *default:* `nil`) - If specified, lists all the possible values for this entity. This should not be more than a handful of values. If the number of values is >10 or could change frequently use the `EntityType.value_ontology` field and specify a list of all possible values in a value ontology file.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the type. It must be unique within the schema file and cannot be a 'Common Type'. Besides that we use the following naming conventions: - *use `snake_casing`* - name matching is case-insensitive - Maximum 64 characters. - Must start with a letter. - Allowed characters: ASCII letters `[a-z0-9_-]`. (For backward compatibility internal infrastructure and tooling can handle any ascii character) - The `/` is sometimes used to denote a property of a type. For example `line_item/amount`. This convention is deprecated, but will still be honored for backward compatibility.
  *   `properties` (*type:* `list(GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty.t)`, *default:* `nil`) - Describing the nested structure, or composition of an entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :baseTypes => list(String.t()) | nil,
          :displayName => String.t() | nil,
          :enumValues =>
            GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues.t()
            | nil,
          :name => String.t() | nil,
          :properties =>
            list(
              GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty.t()
            )
            | nil
        }

  field(:baseTypes, type: :list)
  field(:displayName)

  field(:enumValues,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeEnumValues
  )

  field(:name)

  field(:properties,
    as: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityTypeProperty,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityType do
  def decode(value, options) do
    GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityType.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DocumentAI.V1.Model.GoogleCloudDocumentaiV1DocumentSchemaEntityType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
