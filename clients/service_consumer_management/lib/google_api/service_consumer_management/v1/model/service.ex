# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.Service do
  @moduledoc """
  &#x60;Service&#x60; is the root object of Google service configuration schema. It describes basic information about a service, such as the name and the title, and delegates other aspects to sub-sections. Each sub-section is either a proto message or a repeated proto message that configures a specific aspect, such as auth. See each proto message definition for details.  Example:      type: google.api.Service     config_version: 3     name: calendar.googleapis.com     title: Google Calendar API     apis:     - name: google.calendar.v3.Calendar     authentication:       providers:       - id: google_calendar_auth         jwks_uri: https://www.googleapis.com/oauth2/v1/certs         issuer: https://securetoken.google.com       rules:       - selector: \&quot;*\&quot;         requirements:           provider_id: google_calendar_auth

  ## Attributes

  - apis ([Api]): A list of API interfaces exported by this service. Only the &#x60;name&#x60; field of the google.protobuf.Api needs to be provided by the configuration author, as the remaining fields will be derived from the IDL during the normalization process. It is an error to specify an API interface here which cannot be resolved against the associated IDL files. Defaults to: `null`.
  - authentication (Authentication): Auth configuration. Defaults to: `null`.
  - backend (Backend): API backend configuration. Defaults to: `null`.
  - billing (Billing): Billing configuration. Defaults to: `null`.
  - configVersion (integer()): The semantic version of the service configuration. The config version affects the interpretation of the service configuration. For example, certain features are enabled by default for certain config versions. The latest config version is &#x60;3&#x60;. Defaults to: `null`.
  - context (Context): Context configuration. Defaults to: `null`.
  - control (Control): Configuration for the service control plane. Defaults to: `null`.
  - customError (CustomError): Custom error configuration. Defaults to: `null`.
  - documentation (Documentation): Additional API documentation. Defaults to: `null`.
  - endpoints ([Endpoint]): Configuration for network endpoints.  If this is empty, then an endpoint with the same name as the service is automatically generated to service all defined APIs. Defaults to: `null`.
  - enums ([Enum]): A list of all enum types included in this API service.  Enums referenced directly or indirectly by the &#x60;apis&#x60; are automatically included.  Enums which are not referenced but shall be included should be listed here by name. Example:      enums:     - name: google.someapi.v1.SomeEnum Defaults to: `null`.
  - experimental (Experimental): Experimental configuration. Defaults to: `null`.
  - http (Http): HTTP configuration. Defaults to: `null`.
  - id (String.t): A unique ID for a specific instance of this message, typically assigned by the client for tracking purpose. If empty, the server may choose to generate one instead. Must be no longer than 60 characters. Defaults to: `null`.
  - logging (Logging): Logging configuration. Defaults to: `null`.
  - logs ([LogDescriptor]): Defines the logs used by this service. Defaults to: `null`.
  - metrics ([MetricDescriptor]): Defines the metrics used by this service. Defaults to: `null`.
  - monitoredResources ([MonitoredResourceDescriptor]): Defines the monitored resources used by this service. This is required by the Service.monitoring and Service.logging configurations. Defaults to: `null`.
  - monitoring (Monitoring): Monitoring configuration. Defaults to: `null`.
  - name (String.t): The service name, which is a DNS-like logical identifier for the service, such as &#x60;calendar.googleapis.com&#x60;. The service name typically goes through DNS verification to make sure the owner of the service also owns the DNS name. Defaults to: `null`.
  - producerProjectId (String.t): The Google project that owns this service. Defaults to: `null`.
  - quota (Quota): Quota configuration. Defaults to: `null`.
  - sourceInfo (SourceInfo): Output only. The source information for this configuration if available. Defaults to: `null`.
  - systemParameters (SystemParameters): System parameter configuration. Defaults to: `null`.
  - systemTypes ([Type]): A list of all proto message types included in this API service. It serves similar purpose as [google.api.Service.types], except that these types are not needed by user-defined APIs. Therefore, they will not show up in the generated discovery doc. This field should only be used to define system APIs in ESF. Defaults to: `null`.
  - title (String.t): The product title for this service. Defaults to: `null`.
  - types ([Type]): A list of all proto message types included in this API service. Types referenced directly or indirectly by the &#x60;apis&#x60; are automatically included.  Messages which are not referenced but shall be included, such as types used by the &#x60;google.protobuf.Any&#x60; type, should be listed here by name. Example:      types:     - name: google.protobuf.Int32 Defaults to: `null`.
  - usage (Usage): Configuration controlling usage of this service. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apis => list(GoogleApi.ServiceConsumerManagement.V1.Model.Api.t()),
          :authentication => GoogleApi.ServiceConsumerManagement.V1.Model.Authentication.t(),
          :backend => GoogleApi.ServiceConsumerManagement.V1.Model.Backend.t(),
          :billing => GoogleApi.ServiceConsumerManagement.V1.Model.Billing.t(),
          :configVersion => any(),
          :context => GoogleApi.ServiceConsumerManagement.V1.Model.Context.t(),
          :control => GoogleApi.ServiceConsumerManagement.V1.Model.Control.t(),
          :customError => GoogleApi.ServiceConsumerManagement.V1.Model.CustomError.t(),
          :documentation => GoogleApi.ServiceConsumerManagement.V1.Model.Documentation.t(),
          :endpoints => list(GoogleApi.ServiceConsumerManagement.V1.Model.Endpoint.t()),
          :enums => list(GoogleApi.ServiceConsumerManagement.V1.Model.Enum.t()),
          :experimental => GoogleApi.ServiceConsumerManagement.V1.Model.Experimental.t(),
          :http => GoogleApi.ServiceConsumerManagement.V1.Model.Http.t(),
          :id => any(),
          :logging => GoogleApi.ServiceConsumerManagement.V1.Model.Logging.t(),
          :logs => list(GoogleApi.ServiceConsumerManagement.V1.Model.LogDescriptor.t()),
          :metrics => list(GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptor.t()),
          :monitoredResources =>
            list(GoogleApi.ServiceConsumerManagement.V1.Model.MonitoredResourceDescriptor.t()),
          :monitoring => GoogleApi.ServiceConsumerManagement.V1.Model.Monitoring.t(),
          :name => any(),
          :producerProjectId => any(),
          :quota => GoogleApi.ServiceConsumerManagement.V1.Model.Quota.t(),
          :sourceInfo => GoogleApi.ServiceConsumerManagement.V1.Model.SourceInfo.t(),
          :systemParameters => GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameters.t(),
          :systemTypes => list(GoogleApi.ServiceConsumerManagement.V1.Model.Type.t()),
          :title => any(),
          :types => list(GoogleApi.ServiceConsumerManagement.V1.Model.Type.t()),
          :usage => GoogleApi.ServiceConsumerManagement.V1.Model.Usage.t()
        }

  field(:apis, as: GoogleApi.ServiceConsumerManagement.V1.Model.Api, type: :list)
  field(:authentication, as: GoogleApi.ServiceConsumerManagement.V1.Model.Authentication)
  field(:backend, as: GoogleApi.ServiceConsumerManagement.V1.Model.Backend)
  field(:billing, as: GoogleApi.ServiceConsumerManagement.V1.Model.Billing)
  field(:configVersion)
  field(:context, as: GoogleApi.ServiceConsumerManagement.V1.Model.Context)
  field(:control, as: GoogleApi.ServiceConsumerManagement.V1.Model.Control)
  field(:customError, as: GoogleApi.ServiceConsumerManagement.V1.Model.CustomError)
  field(:documentation, as: GoogleApi.ServiceConsumerManagement.V1.Model.Documentation)
  field(:endpoints, as: GoogleApi.ServiceConsumerManagement.V1.Model.Endpoint, type: :list)
  field(:enums, as: GoogleApi.ServiceConsumerManagement.V1.Model.Enum, type: :list)
  field(:experimental, as: GoogleApi.ServiceConsumerManagement.V1.Model.Experimental)
  field(:http, as: GoogleApi.ServiceConsumerManagement.V1.Model.Http)
  field(:id)
  field(:logging, as: GoogleApi.ServiceConsumerManagement.V1.Model.Logging)
  field(:logs, as: GoogleApi.ServiceConsumerManagement.V1.Model.LogDescriptor, type: :list)
  field(:metrics, as: GoogleApi.ServiceConsumerManagement.V1.Model.MetricDescriptor, type: :list)

  field(
    :monitoredResources,
    as: GoogleApi.ServiceConsumerManagement.V1.Model.MonitoredResourceDescriptor,
    type: :list
  )

  field(:monitoring, as: GoogleApi.ServiceConsumerManagement.V1.Model.Monitoring)
  field(:name)
  field(:producerProjectId)
  field(:quota, as: GoogleApi.ServiceConsumerManagement.V1.Model.Quota)
  field(:sourceInfo, as: GoogleApi.ServiceConsumerManagement.V1.Model.SourceInfo)
  field(:systemParameters, as: GoogleApi.ServiceConsumerManagement.V1.Model.SystemParameters)
  field(:systemTypes, as: GoogleApi.ServiceConsumerManagement.V1.Model.Type, type: :list)
  field(:title)
  field(:types, as: GoogleApi.ServiceConsumerManagement.V1.Model.Type, type: :list)
  field(:usage, as: GoogleApi.ServiceConsumerManagement.V1.Model.Usage)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Service do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
