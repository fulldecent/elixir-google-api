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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.Marketplacedeals do
  @moduledoc """
  API calls for all endpoints tagged `Marketplacedeals`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Delete the specified deals from the proposal

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - proposal_id (String.t): The proposalId to delete deals from.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (DeleteOrderDealsRequest): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.DeleteOrderDealsResponse{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_marketplacedeals_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.DeleteOrderDealsResponse.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_marketplacedeals_delete(
        connection,
        proposal_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/proposals/{proposalId}/deals/delete", %{
        "proposalId" => URI.encode(proposal_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.DeleteOrderDealsResponse{}]
    )
  end

  @doc """
  Add new deals for the specified proposal

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - proposal_id (String.t): proposalId for which deals need to be added.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (AddOrderDealsRequest): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsResponse{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_marketplacedeals_insert(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsResponse.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_marketplacedeals_insert(
        connection,
        proposal_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/proposals/{proposalId}/deals/insert", %{
        "proposalId" => URI.encode(proposal_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.AddOrderDealsResponse{}]
    )
  end

  @doc """
  List all the deals for a given proposal

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - proposal_id (String.t): The proposalId to get deals for. To search across all proposals specify order_id &#x3D; &#39;-&#39; as part of the URL.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :pqlQuery (String.t): Query string to retrieve specific deals.

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.GetOrderDealsResponse{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_marketplacedeals_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.GetOrderDealsResponse.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_marketplacedeals_list(
        connection,
        proposal_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :pqlQuery => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/proposals/{proposalId}/deals", %{
        "proposalId" => URI.encode(proposal_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.GetOrderDealsResponse{}]
    )
  end

  @doc """
  Replaces all the deals in the proposal with the passed in deals

  ## Parameters

  - connection (GoogleApi.AdExchangeBuyer.V14.Connection): Connection to server
  - proposal_id (String.t): The proposalId to edit deals on.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :body (EditAllOrderDealsRequest): 

  ## Returns

  {:ok, %GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsResponse{}} on success
  {:error, info} on failure
  """
  @spec adexchangebuyer_marketplacedeals_update(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsResponse.t()}
          | {:error, Tesla.Env.t()}
  def adexchangebuyer_marketplacedeals_update(
        connection,
        proposal_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/proposals/{proposalId}/deals/update", %{
        "proposalId" => URI.encode(proposal_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.EditAllOrderDealsResponse{}]
    )
  end
end
