# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Stats do
  @moduledoc """
  API calls for all endpoints tagged `Stats`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:sortBy` (String.t): 
    - `:order` (Order): 
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:search` (String.t): 
    - `:diff` (String.t): 
    - `:type` (EndType): 
    - `:stars_from` (float()): 
    - `:stars_to` (float()): 
    - `:eventId` (integer()): 

  ### Returns

  - `{:ok, APIBL.Model.PlayerLeaderboardStatsResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec stats_get_scores_stats(Tesla.Env.client, String.t, keyword()) :: {:ok, APIBL.Model.PlayerLeaderboardStatsResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def stats_get_scores_stats(connection, id, opts \\ []) do
    optional_params = %{
      :sortBy => :query,
      :order => :query,
      :page => :query,
      :count => :query,
      :search => :query,
      :diff => :query,
      :type => :query,
      :stars_from => :query,
      :stars_to => :query,
      :eventId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/scoresstats")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerLeaderboardStatsResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `score_id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.VoteStatus.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec stats_played(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.VoteStatus.t} | {:error, Tesla.Env.t}
  def stats_played(connection, score_id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/watched/#{score_id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.VoteStatus}
    ])
  end
end
