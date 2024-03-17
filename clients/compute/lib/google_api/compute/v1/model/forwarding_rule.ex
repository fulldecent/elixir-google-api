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

defmodule GoogleApi.Compute.V1.Model.ForwardingRule do
  @moduledoc """
  Represents a Forwarding Rule resource. Forwarding rule resources in Google Cloud can be either regional or global in scope: * [Global](https://cloud.google.com/compute/docs/reference/rest/v1/globalForwardingRules) * [Regional](https://cloud.google.com/compute/docs/reference/rest/v1/forwardingRules) A forwarding rule and its corresponding IP address represent the frontend configuration of a Google Cloud load balancer. Forwarding rules can also reference target instances and Cloud VPN Classic gateways (targetVpnGateway). For more information, read Forwarding rule concepts and Using protocol forwarding.

  ## Attributes

  *   `serviceDirectoryRegistrations` (*type:* `list(GoogleApi.Compute.V1.Model.ForwardingRuleServiceDirectoryRegistration.t)`, *default:* `nil`) - Service Directory resources to register this forwarding rule with. Currently, only supports a single Service Directory resource.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `isMirroringCollector` (*type:* `boolean()`, *default:* `nil`) - Indicates whether or not this load balancer can be used as a collector for packet mirroring. To prevent mirroring loops, instances behind this load balancer will not have their traffic mirrored even if a PacketMirroring rule applies to them. This can only be set to true for load balancers that have their loadBalancingScheme set to INTERNAL.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. For Private Service Connect forwarding rules that forward traffic to Google APIs, the forwarding rule name must be a 1-20 characters string with lowercase letters and numbers and must start with a letter.
  *   `noAutomateDnsZone` (*type:* `boolean()`, *default:* `nil`) - This is used in PSC consumer ForwardingRule to control whether it should try to auto-generate a DNS zone or not. Non-PSC forwarding rules do not use this field. Once set, this field is not mutable.
  *   `kind` (*type:* `String.t`, *default:* `compute#forwardingRule`) - [Output Only] Type of the resource. Always compute#forwardingRule for forwarding rule resources.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `pscConnectionId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The PSC connection id of the PSC forwarding rule.
  *   `baseForwardingRule` (*type:* `String.t`, *default:* `nil`) - [Output Only] The URL for the corresponding base forwarding rule. By base forwarding rule, we mean the forwarding rule that has the same IP address, protocol, and port settings with the current forwarding rule, but without sourceIPRanges specified. Always empty if the current forwarding rule does not have sourceIPRanges specified.
  *   `ports` (*type:* `list(String.t)`, *default:* `nil`) - The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The ports field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal protocol forwarding. - You can specify a list of up to five ports by number, separated by commas. The ports can be contiguous or discontiguous. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair if they share at least one port number. @pattern: \\\\d+(?:-\\\\d+)?
  *   `serviceName` (*type:* `String.t`, *default:* `nil`) - [Output Only] The internal fully qualified service name for this forwarding rule. This field is only used for internal load balancing.
  *   `pscConnectionStatus` (*type:* `String.t`, *default:* `nil`) - 
  *   `target` (*type:* `String.t`, *default:* `nil`) - The URL of the target resource to receive the matched traffic. For regional forwarding rules, this target must be in the same region as the forwarding rule. For global forwarding rules, this target must be a global load balancing resource. The forwarded traffic must be of a type appropriate to the target object. - For load balancers, see the "Target" column in [Port specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). - For Private Service Connect forwarding rules that forward traffic to Google APIs, provide the name of a supported Google API bundle: - vpc-sc - APIs that support VPC Service Controls. - all-apis - All supported Google APIs. - For Private Service Connect forwarding rules that forward traffic to managed services, the target must be a service attachment. The target is not mutable once set as a service attachment. 
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional forwarding rule resides. This field is not applicable to global forwarding rules. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `loadBalancingScheme` (*type:* `String.t`, *default:* `nil`) - Specifies the forwarding rule type. For more information about forwarding rules, refer to Forwarding rule concepts.
  *   `IPAddress` (*type:* `String.t`, *default:* `nil`) - IP address for which this forwarding rule accepts traffic. When a client sends traffic to this IP address, the forwarding rule directs the traffic to the referenced target or backendService. While creating a forwarding rule, specifying an IPAddress is required under the following circumstances: - When the target is set to targetGrpcProxy and validateForProxyless is set to true, the IPAddress should be set to 0.0.0.0. - When the target is a Private Service Connect Google APIs bundle, you must specify an IPAddress. Otherwise, you can optionally specify an IP address that references an existing static (reserved) IP address resource. When omitted, Google Cloud assigns an ephemeral IP address. Use one of the following formats to specify an IP address while creating a forwarding rule: * IP address number, as in `100.1.2.3` * IPv6 address range, as in `2600:1234::/96` * Full resource URL, as in https://www.googleapis.com/compute/v1/projects/ project_id/regions/region/addresses/address-name * Partial URL or by name, as in: - projects/project_id/regions/region/addresses/address-name - regions/region/addresses/address-name - global/addresses/address-name - address-name The forwarding rule's target or backendService, and in most cases, also the loadBalancingScheme, determine the type of IP address that you can use. For detailed information, see [IP address specifications](https://cloud.google.com/load-balancing/docs/forwarding-rule-concepts#ip_address_specifications). When reading an IPAddress, the API always returns the IP address number.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - This field identifies the subnetwork that the load balanced IP should belong to for this forwarding rule, used with internal load balancers and external passthrough Network Load Balancers with IPv6. If the network specified is in auto subnet mode, this field is optional. However, a subnetwork must be specified if the network is in custom subnet mode or when creating external forwarding rule with IPv6.
  *   `sourceIpRanges` (*type:* `list(String.t)`, *default:* `nil`) - If not empty, this forwarding rule will only forward the traffic when the source IP address matches one of the IP addresses or CIDR ranges set here. Note that a forwarding rule can only have up to 64 source IP ranges, and this field can only be used with a regional forwarding rule whose scheme is EXTERNAL. Each source_ip_range entry should be either an IP address (for example, 1.2.3.4) or a CIDR range (for example, 1.2.3.0/24).
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `serviceLabel` (*type:* `String.t`, *default:* `nil`) - An optional prefix to the service name for this forwarding rule. If specified, the prefix is the first label of the fully qualified service name. The label must be 1-63 characters long, and comply with RFC1035. Specifically, the label must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. This field is only used for internal load balancing.
  *   `ipVersion` (*type:* `String.t`, *default:* `nil`) - The IP Version that will be used by this forwarding rule. Valid options are IPV4 or IPV6.
  *   `portRange` (*type:* `String.t`, *default:* `nil`) - The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The portRange field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, or SCTP, and - It's applicable only to the following products: external passthrough Network Load Balancers, internal and external proxy Network Load Balancers, internal and external Application Load Balancers, external protocol forwarding, and Classic VPN. - Some products have restrictions on what ports can be used. See port specifications for details. For external forwarding rules, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. For internal forwarding rules within the same VPC network, two or more forwarding rules cannot use the same [IPAddress, IPProtocol] pair, and cannot have overlapping portRanges. @pattern: \\\\d+(?:-\\\\d+)?
  *   `allPorts` (*type:* `boolean()`, *default:* `nil`) - The ports, portRange, and allPorts fields are mutually exclusive. Only packets addressed to ports in the specified range will be forwarded to the backends configured with this forwarding rule. The allPorts field has the following limitations: - It requires that the forwarding rule IPProtocol be TCP, UDP, SCTP, or L3_DEFAULT. - It's applicable only to the following products: internal passthrough Network Load Balancers, backend service-based external passthrough Network Load Balancers, and internal and external protocol forwarding. - Set this field to true to allow packets addressed to any port or packets lacking destination port information (for example, UDP fragments after the first fragment) to be forwarded to the backends configured with this forwarding rule. The L3_DEFAULT protocol requires allPorts be set to true. 
  *   `backendService` (*type:* `String.t`, *default:* `nil`) - Identifies the backend service to which the forwarding rule sends traffic. Required for internal and external passthrough Network Load Balancers; must be omitted for all other load balancer types.
  *   `network` (*type:* `String.t`, *default:* `nil`) - This field is not used for global external load balancing. For internal passthrough Network Load Balancers, this field identifies the network that the load balanced IP should belong to for this forwarding rule. If the subnetwork is specified, the network of the subnetwork will be used. If neither subnetwork nor this field is specified, the default network will be used. For Private Service Connect forwarding rules that forward traffic to Google APIs, a network must be provided.
  *   `allowPscGlobalAccess` (*type:* `boolean()`, *default:* `nil`) - This is used in PSC consumer ForwardingRule to control whether the PSC endpoint can be accessed from another region.
  *   `metadataFilters` (*type:* `list(GoogleApi.Compute.V1.Model.MetadataFilter.t)`, *default:* `nil`) - Opaque filter criteria used by load balancer to restrict routing configuration to a limited set of xDS compliant clients. In their xDS requests to load balancer, xDS clients present node metadata. When there is a match, the relevant configuration is made available to those proxies. Otherwise, all the resources (e.g. TargetHttpProxy, UrlMap) referenced by the ForwardingRule are not visible to those proxies. For each metadataFilter in this list, if its filterMatchCriteria is set to MATCH_ANY, at least one of the filterLabels must match the corresponding label provided in the metadata. If its filterMatchCriteria is set to MATCH_ALL, then all of its filterLabels must match with corresponding labels provided in the metadata. If multiple metadataFilters are specified, all of them need to be satisfied in order to be considered a match. metadataFilters specified here will be applifed before those specified in the UrlMap that this ForwardingRule references. metadataFilters only applies to Loadbalancers that have their loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this resource, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  *   `allowGlobalAccess` (*type:* `boolean()`, *default:* `nil`) - If set to true, clients can access the internal passthrough Network Load Balancers, the regional internal Application Load Balancer, and the regional internal proxy Network Load Balancer from all regions. If false, only allows access from the local region the load balancer is located at. Note that for INTERNAL_MANAGED forwarding rules, this field cannot be changed after the forwarding rule is created.
  *   `IPProtocol` (*type:* `String.t`, *default:* `nil`) - The IP protocol to which this rule applies. For protocol forwarding, valid options are TCP, UDP, ESP, AH, SCTP, ICMP and L3_DEFAULT. The valid IP protocols are different for different load balancing products as described in [Load balancing features](https://cloud.google.com/load-balancing/docs/features#protocols_from_the_load_balancer_to_the_backends).
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `networkTier` (*type:* `String.t`, *default:* `nil`) - This signifies the networking tier used for configuring this load balancer and can only take the following values: PREMIUM, STANDARD. For regional ForwardingRule, the valid values are PREMIUM and STANDARD. For GlobalForwardingRule, the valid value is PREMIUM. If this field is not specified, it is assumed to be PREMIUM. If IPAddress is specified, this value must be equal to the networkTier of the Address.
  *   `fingerprint` (*type:* `String.t`, *default:* `nil`) - Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a ForwardingRule. Include the fingerprint in patch request to ensure that you do not overwrite changes that were applied from another concurrent request. To see the latest fingerprint, make a get() request to retrieve a ForwardingRule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :serviceDirectoryRegistrations =>
            list(GoogleApi.Compute.V1.Model.ForwardingRuleServiceDirectoryRegistration.t()) | nil,
          :selfLink => String.t() | nil,
          :isMirroringCollector => boolean() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :noAutomateDnsZone => boolean() | nil,
          :kind => String.t() | nil,
          :description => String.t() | nil,
          :pscConnectionId => String.t() | nil,
          :baseForwardingRule => String.t() | nil,
          :ports => list(String.t()) | nil,
          :serviceName => String.t() | nil,
          :pscConnectionStatus => String.t() | nil,
          :target => String.t() | nil,
          :region => String.t() | nil,
          :loadBalancingScheme => String.t() | nil,
          :IPAddress => String.t() | nil,
          :subnetwork => String.t() | nil,
          :sourceIpRanges => list(String.t()) | nil,
          :creationTimestamp => String.t() | nil,
          :serviceLabel => String.t() | nil,
          :ipVersion => String.t() | nil,
          :portRange => String.t() | nil,
          :allPorts => boolean() | nil,
          :backendService => String.t() | nil,
          :network => String.t() | nil,
          :allowPscGlobalAccess => boolean() | nil,
          :metadataFilters => list(GoogleApi.Compute.V1.Model.MetadataFilter.t()) | nil,
          :labelFingerprint => String.t() | nil,
          :allowGlobalAccess => boolean() | nil,
          :IPProtocol => String.t() | nil,
          :id => String.t() | nil,
          :networkTier => String.t() | nil,
          :fingerprint => String.t() | nil
        }

  field(:serviceDirectoryRegistrations,
    as: GoogleApi.Compute.V1.Model.ForwardingRuleServiceDirectoryRegistration,
    type: :list
  )

  field(:selfLink)
  field(:isMirroringCollector)
  field(:labels, type: :map)
  field(:name)
  field(:noAutomateDnsZone)
  field(:kind)
  field(:description)
  field(:pscConnectionId)
  field(:baseForwardingRule)
  field(:ports, type: :list)
  field(:serviceName)
  field(:pscConnectionStatus)
  field(:target)
  field(:region)
  field(:loadBalancingScheme)
  field(:IPAddress)
  field(:subnetwork)
  field(:sourceIpRanges, type: :list)
  field(:creationTimestamp)
  field(:serviceLabel)
  field(:ipVersion)
  field(:portRange)
  field(:allPorts)
  field(:backendService)
  field(:network)
  field(:allowPscGlobalAccess)
  field(:metadataFilters, as: GoogleApi.Compute.V1.Model.MetadataFilter, type: :list)
  field(:labelFingerprint)
  field(:allowGlobalAccess)
  field(:IPProtocol)
  field(:id)
  field(:networkTier)
  field(:fingerprint)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.ForwardingRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.ForwardingRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.ForwardingRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
