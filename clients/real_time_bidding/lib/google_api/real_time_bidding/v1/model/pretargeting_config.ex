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

defmodule GoogleApi.RealTimeBidding.V1.Model.PretargetingConfig do
  @moduledoc """
  Pretargeting configuration: a set of targeting dimensions applied at the pretargeting stage of the RTB funnel. These control which inventory a bidder will receive bid requests for.

  ## Attributes

  *   `allowedUserTargetingModes` (*type:* `list(String.t)`, *default:* `nil`) - Targeting modes included by this configuration. A bid request must allow all the specified targeting modes. An unset value allows all bid requests to be sent, regardless of which targeting modes they allow.
  *   `appTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.AppTargeting.t`, *default:* `nil`) - Targeting on a subset of app inventory. If APP is listed in targeted_environments, the specified targeting is applied. A maximum of 30,000 app IDs can be targeted. An unset value for targeting allows all app-based bid requests to be sent. Apps can either be targeting positively (bid requests will be sent only if the destination app is listed in the targeting dimension) or negatively (bid requests will be sent only if the destination app is not listed in the targeting dimension).
  *   `billingId` (*type:* `String.t`, *default:* `nil`) - Output only. The identifier that corresponds to this pretargeting configuration that helps buyers track and attribute their spend across their own arbitrary divisions. If a bid request matches more than one configuration, the buyer chooses which billing_id to attribute each of their bids.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The diplay name associated with this configuration. This name must be unique among all the pretargeting configurations a bidder has.
  *   `excludedContentLabelIds` (*type:* `list(String.t)`, *default:* `nil`) - The sensitive content category label IDs excluded in this configuration. Bid requests for inventory with any of the specified content label IDs will not be sent. Refer to this file https://storage.googleapis.com/adx-rtb-dictionaries/content-labels.txt for category IDs.
  *   `geoTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t`, *default:* `nil`) - The geos included or excluded in this configuration defined in https://storage.googleapis.com/adx-rtb-dictionaries/geo-table.csv
  *   `includedCreativeDimensions` (*type:* `list(GoogleApi.RealTimeBidding.V1.Model.CreativeDimensions.t)`, *default:* `nil`) - Creative dimensions included by this configuration. Only bid requests eligible for at least one of the specified creative dimensions will be sent. An unset value allows all bid requests to be sent, regardless of creative dimension.
  *   `includedEnvironments` (*type:* `list(String.t)`, *default:* `nil`) - Environments that are being included. Bid requests will not be sent for a given environment if it is not included. Further restrictions can be applied to included environments to target only a subset of its inventory. An unset value includes all environments.
  *   `includedFormats` (*type:* `list(String.t)`, *default:* `nil`) - Creative formats included by this configuration. Only bid requests eligible for at least one of the specified creative formats will be sent. An unset value will allow all bid requests to be sent, regardless of format.
  *   `includedLanguages` (*type:* `list(String.t)`, *default:* `nil`) - The languages included in this configuration, represented by their language code. See https://developers.google.com/adwords/api/docs/appendix/languagecodes.
  *   `includedMobileOperatingSystemIds` (*type:* `list(String.t)`, *default:* `nil`) - The mobile operating systems included in this configuration as defined in https://storage.googleapis.com/adx-rtb-dictionaries/mobile-os.csv
  *   `includedPlatforms` (*type:* `list(String.t)`, *default:* `nil`) - The platforms included by this configration. Bid requests for devices with the specified platform types will be sent. An unset value allows all bid requests to be sent, regardless of platform.
  *   `includedUserIdTypes` (*type:* `list(String.t)`, *default:* `nil`) - User identifier types included in this configuration. At least one of the user identifier types specified in this list must be available for the bid request to be sent.
  *   `interstitialTargeting` (*type:* `String.t`, *default:* `nil`) - The interstitial targeting specified for this configuration. The unset value will allow bid requests to be sent regardless of whether they are for interstitials or not.
  *   `invalidGeoIds` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Existing included or excluded geos that are invalid. Previously targeted geos may become invalid due to privacy restrictions.
  *   `maximumQps` (*type:* `String.t`, *default:* `nil`) - The maximum QPS threshold for this configuration. The bidder should receive no more than this number of bid requests matching this configuration per second across all their bidding endpoints among all trading locations. Further information available at https://developers.google.com/authorized-buyers/rtb/peer-guide
  *   `minimumViewabilityDecile` (*type:* `integer()`, *default:* `nil`) - The targeted minimum viewability decile, ranging in values [0, 10]. A value of 5 means that the configuration will only match adslots for which we predict at least 50% viewability. Values > 10 will be rounded down to 10. An unset value or a value of 0 indicates that bid requests will be sent regardless of viewability.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the pretargeting configuration that must follow the pattern `bidders/{bidder_account_id}/pretargetingConfigs/{config_id}`
  *   `publisherTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension.t`, *default:* `nil`) - Targeting on a subset of publisher inventory. Publishers can either be targeted positively (bid requests will be sent only if the publisher is listed in the targeting dimension) or negatively (bid requests will be sent only if the publisher is not listed in the targeting dimension). A maximum of 10,000 publisher IDs can be targeted. Publisher IDs are found in [ads.txt](https://iabtechlab.com/ads-txt/) / [app-ads.txt](https://iabtechlab.com/app-ads-txt/) and in bid requests in the `BidRequest.publisher_id` field on the [Google RTB protocol](https://developers.google.com/authorized-buyers/rtb/downloads/realtime-bidding-proto) or the `BidRequest.site.publisher.id` / `BidRequest.app.publisher.id` field on the [OpenRTB protocol](https://developers.google.com/authorized-buyers/rtb/downloads/openrtb-adx-proto). Publisher IDs will be returned in the order that they were entered.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this pretargeting configuration.
  *   `userListTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t`, *default:* `nil`) - The remarketing lists included or excluded in this configuration as defined in UserList.
  *   `verticalTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t`, *default:* `nil`) - The verticals included or excluded in this configuration as defined in https://developers.google.com/authorized-buyers/rtb/downloads/publisher-verticals
  *   `webTargeting` (*type:* `GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension.t`, *default:* `nil`) - Targeting on a subset of site inventory. If WEB is listed in included_environments, the specified targeting is applied. A maximum of 50,000 site URLs can be targeted. An unset value for targeting allows all web-based bid requests to be sent. Sites can either be targeting positively (bid requests will be sent only if the destination site is listed in the targeting dimension) or negatively (bid requests will be sent only if the destination site is not listed in the pretargeting configuration).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowedUserTargetingModes => list(String.t()) | nil,
          :appTargeting => GoogleApi.RealTimeBidding.V1.Model.AppTargeting.t() | nil,
          :billingId => String.t() | nil,
          :displayName => String.t() | nil,
          :excludedContentLabelIds => list(String.t()) | nil,
          :geoTargeting => GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t() | nil,
          :includedCreativeDimensions =>
            list(GoogleApi.RealTimeBidding.V1.Model.CreativeDimensions.t()) | nil,
          :includedEnvironments => list(String.t()) | nil,
          :includedFormats => list(String.t()) | nil,
          :includedLanguages => list(String.t()) | nil,
          :includedMobileOperatingSystemIds => list(String.t()) | nil,
          :includedPlatforms => list(String.t()) | nil,
          :includedUserIdTypes => list(String.t()) | nil,
          :interstitialTargeting => String.t() | nil,
          :invalidGeoIds => list(String.t()) | nil,
          :maximumQps => String.t() | nil,
          :minimumViewabilityDecile => integer() | nil,
          :name => String.t() | nil,
          :publisherTargeting =>
            GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension.t() | nil,
          :state => String.t() | nil,
          :userListTargeting =>
            GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t() | nil,
          :verticalTargeting =>
            GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension.t() | nil,
          :webTargeting => GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension.t() | nil
        }

  field(:allowedUserTargetingModes, type: :list)
  field(:appTargeting, as: GoogleApi.RealTimeBidding.V1.Model.AppTargeting)
  field(:billingId)
  field(:displayName)
  field(:excludedContentLabelIds, type: :list)
  field(:geoTargeting, as: GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension)

  field(:includedCreativeDimensions,
    as: GoogleApi.RealTimeBidding.V1.Model.CreativeDimensions,
    type: :list
  )

  field(:includedEnvironments, type: :list)
  field(:includedFormats, type: :list)
  field(:includedLanguages, type: :list)
  field(:includedMobileOperatingSystemIds, type: :list)
  field(:includedPlatforms, type: :list)
  field(:includedUserIdTypes, type: :list)
  field(:interstitialTargeting)
  field(:invalidGeoIds, type: :list)
  field(:maximumQps)
  field(:minimumViewabilityDecile)
  field(:name)
  field(:publisherTargeting, as: GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension)
  field(:state)
  field(:userListTargeting, as: GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension)
  field(:verticalTargeting, as: GoogleApi.RealTimeBidding.V1.Model.NumericTargetingDimension)
  field(:webTargeting, as: GoogleApi.RealTimeBidding.V1.Model.StringTargetingDimension)
end

defimpl Poison.Decoder, for: GoogleApi.RealTimeBidding.V1.Model.PretargetingConfig do
  def decode(value, options) do
    GoogleApi.RealTimeBidding.V1.Model.PretargetingConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.RealTimeBidding.V1.Model.PretargetingConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
