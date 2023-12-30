# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Friends do
  @moduledoc """
  API calls for all endpoints tagged `Friends`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:id` (String.t): 
    - `:sortBy` (String.t): 
    - `:order` (Order): 
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:search` (String.t): 
    - `:type` (FriendActivityType): 

  ### Returns

  - `{:ok, APIBL.Model.FriendActivityResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec friends_friends_activity(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.FriendActivityResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def friends_friends_activity(connection, opts \\ []) do
    optional_params = %{
      :id => :query,
      :sortBy => :query,
      :order => :query,
      :page => :query,
      :count => :query,
      :search => :query,
      :type => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/friendActivity")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.FriendActivityResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:id` (String.t): 
    - `:sortBy` (String.t): 
    - `:order` (Order): 
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:leaderboardContext` (LeaderboardContexts): 
    - `:search` (String.t): 
    - `:diff` (String.t): 
    - `:type` (String.t): 
    - `:stars_from` (float()): 
    - `:stars_to` (float()): 

  ### Returns

  - `{:ok, APIBL.Model.ScoreResponseWithMyScoreResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec friends_friends_scores(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.ScoreResponseWithMyScoreResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def friends_friends_scores(connection, opts \\ []) do
    optional_params = %{
      :id => :query,
      :sortBy => :query,
      :order => :query,
      :page => :query,
      :count => :query,
      :leaderboardContext => :query,
      :search => :query,
      :diff => :query,
      :type => :query,
      :stars_from => :query,
      :stars_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/friendScores")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ScoreResponseWithMyScoreResponseWithMetadata}
    ])
  end
end