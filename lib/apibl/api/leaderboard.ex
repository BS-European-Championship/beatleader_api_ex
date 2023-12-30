# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Leaderboard do
  @moduledoc """
  API calls for all endpoints tagged `Leaderboard`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, [%CustomMode{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_custom_modes(Tesla.Env.client, keyword()) :: {:ok, list(APIBL.Model.CustomMode.t)} | {:error, Tesla.Env.t}
  def leaderboard_custom_modes(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/custommodes")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.CustomMode}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:sortBy` (String.t): 
    - `:order` (Order): 
    - `:scoreStatus` (ScoreFilterStatus): 
    - `:leaderboardContext` (LeaderboardContexts): 
    - `:countries` (String.t): 
    - `:search` (String.t): 
    - `:modifiers` (String.t): 
    - `:friends` (boolean()): 
    - `:voters` (boolean()): 

  ### Returns

  - `{:ok, APIBL.Model.LeaderboardResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get(Tesla.Env.client, String.t, keyword()) :: {:ok, APIBL.Model.LeaderboardResponse.t} | {:error, Tesla.Env.t}
  def leaderboard_get(connection, id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query,
      :sortBy => :query,
      :order => :query,
      :scoreStatus => :query,
      :leaderboardContext => :query,
      :countries => :query,
      :search => :query,
      :modifiers => :query,
      :friends => :query,
      :voters => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/leaderboard/#{id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.LeaderboardResponse}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:sortBy` (SortBy): 
    - `:order` (Order): 
    - `:search` (String.t): 
    - `:type` (Type): 
    - `:mode` (String.t): 
    - `:difficulty` (String.t): 
    - `:mapType` (integer()): 
    - `:allTypes` (Operation): 
    - `:mapRequirements` (Requirements): 
    - `:allRequirements` (Operation): 
    - `:songStatus` (SongStatus): 
    - `:mytype` (MyType): 
    - `:stars_from` (float()): 
    - `:stars_to` (float()): 
    - `:accrating_from` (float()): 
    - `:accrating_to` (float()): 
    - `:passrating_from` (float()): 
    - `:passrating_to` (float()): 
    - `:techrating_from` (float()): 
    - `:techrating_to` (float()): 
    - `:date_from` (integer()): 
    - `:date_to` (integer()): 

  ### Returns

  - `{:ok, APIBL.Model.LeaderboardInfoResponseResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get_all(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.LeaderboardInfoResponseResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def leaderboard_get_all(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query,
      :sortBy => :query,
      :order => :query,
      :search => :query,
      :type => :query,
      :mode => :query,
      :difficulty => :query,
      :mapType => :query,
      :allTypes => :query,
      :mapRequirements => :query,
      :allRequirements => :query,
      :songStatus => :query,
      :mytype => :query,
      :stars_from => :query,
      :stars_to => :query,
      :accrating_from => :query,
      :accrating_to => :query,
      :passrating_from => :query,
      :passrating_to => :query,
      :techrating_from => :query,
      :techrating_to => :query,
      :date_from => :query,
      :date_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/leaderboards")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.LeaderboardInfoResponseResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:sortBy` (SortBy): 
    - `:order` (Order): 
    - `:search` (String.t): 
    - `:type` (Type): 
    - `:mode` (String.t): 
    - `:difficulty` (String.t): 
    - `:mapType` (integer()): 
    - `:allTypes` (Operation): 
    - `:mapRequirements` (Requirements): 
    - `:allRequirements` (Operation): 
    - `:songStatus` (SongStatus): 
    - `:mytype` (MyType): 
    - `:stars_from` (float()): 
    - `:stars_to` (float()): 
    - `:accrating_from` (float()): 
    - `:accrating_to` (float()): 
    - `:passrating_from` (float()): 
    - `:passrating_to` (float()): 
    - `:techrating_from` (float()): 
    - `:techrating_to` (float()): 
    - `:date_from` (integer()): 
    - `:date_to` (integer()): 

  ### Returns

  - `{:ok, APIBL.Model.LeaderboardInfoResponseResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get_all_groupped(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.LeaderboardInfoResponseResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def leaderboard_get_all_groupped(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query,
      :sortBy => :query,
      :order => :query,
      :search => :query,
      :type => :query,
      :mode => :query,
      :difficulty => :query,
      :mapType => :query,
      :allTypes => :query,
      :mapRequirements => :query,
      :allRequirements => :query,
      :songStatus => :query,
      :mytype => :query,
      :stars_from => :query,
      :stars_to => :query,
      :accrating_from => :query,
      :accrating_to => :query,
      :passrating_from => :query,
      :passrating_to => :query,
      :techrating_from => :query,
      :techrating_to => :query,
      :date_from => :query,
      :date_to => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/leaderboards/groupped")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.LeaderboardInfoResponseResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `leaderboard_id` (String.t): 
  - `clan_ranking_id` (integer()): 
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 

  ### Returns

  - `{:ok, APIBL.Model.ClanRankingResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get_clan_ranking_associated_scores(Tesla.Env.client, String.t, integer(), keyword()) :: {:ok, APIBL.Model.ClanRankingResponse.t} | {:error, Tesla.Env.t}
  def leaderboard_get_clan_ranking_associated_scores(connection, leaderboard_id, clan_ranking_id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/leaderboard/clanRankings/#{leaderboard_id}/#{clan_ranking_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ClanRankingResponse}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 

  ### Returns

  - `{:ok, APIBL.Model.LeaderboardClanRankingResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get_clan_rankings(Tesla.Env.client, String.t, keyword()) :: {:ok, APIBL.Model.LeaderboardClanRankingResponse.t} | {:error, Tesla.Env.t}
  def leaderboard_get_clan_rankings(connection, id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/leaderboard/clanRankings/#{id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.LeaderboardClanRankingResponse}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `hash` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:my_scores` (boolean()): 

  ### Returns

  - `{:ok, APIBL.Model.LeaderboardsResponseWithScores.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get_leaderboards_by_hash(Tesla.Env.client, String.t, keyword()) :: {:ok, APIBL.Model.LeaderboardsResponseWithScores.t} | {:error, Tesla.Env.t}
  def leaderboard_get_leaderboards_by_hash(connection, hash, opts \\ []) do
    optional_params = %{
      :my_scores => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/leaderboards/hash/#{hash}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.LeaderboardsResponseWithScores}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.LeaderboardVoting.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec leaderboard_get_voting(Tesla.Env.client, String.t, keyword()) :: {:ok, APIBL.Model.LeaderboardVoting.t} | {:error, Tesla.Env.t}
  def leaderboard_get_voting(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/leaderboard/ranking/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.LeaderboardVoting}
    ])
  end
end