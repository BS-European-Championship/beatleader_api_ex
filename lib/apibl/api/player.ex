# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Player do
  @moduledoc """
  API calls for all endpoints tagged `Player`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """
  Get player profile
  Retrieves a Beat Saber profile data for a specific player ID.

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): The ID of the player
  - `opts` (keyword): Optional parameters
    - `:stats` (boolean()): Include stats in the response
    - `:keepOriginalId` (boolean()): Whether to keep original ID (for migrated players)
    - `:leaderboardContext` (LeaderboardContexts): Leaderboard context, 'general' by default

  ### Returns

  - `{:ok, APIBL.Model.PlayerResponseFull.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_get(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APIBL.Model.PlayerResponseFull.t} | {:error, Tesla.Env.t}
  def player_get(connection, id, opts \\ []) do
    optional_params = %{
      :stats => :query,
      :keepOriginalId => :query,
      :leaderboardContext => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerResponseFull},
      {404, false}
    ])
  end

  @doc """
  Get player with BeatSaver
  Retrieves a BeatLeader profile data with linked BeatSaver profile.

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): BeatSaver profile ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.PlayerResponseFull.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_get_beat_saver(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APIBL.Model.PlayerResponseFull.t} | {:error, Tesla.Env.t}
  def player_get_beat_saver(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/player/beatsaver/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerResponseFull},
      {404, false}
    ])
  end

  @doc """
  Get player with Discord
  Retrieves a BeatLeader profile data with linked Discord profile.

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Discord profile ID
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.PlayerResponseFull.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_get_discord(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APIBL.Model.PlayerResponseFull.t} | {:error, Tesla.Env.t}
  def player_get_discord(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/player/discord/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerResponseFull},
      {404, false}
    ])
  end

  @doc """
  Retrieve a list of players (ranking)
  Fetches a paginated and optionally filtered list of players. Filters include sorting by performance points, search, country, maps type, platform, and more.

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:sortBy` (String.t): Sorting criteria, default is 'pp' (performance points)
    - `:page` (integer()): Page number for pagination, default is 1
    - `:count` (integer()): Number of players per page, default is 50
    - `:search` (String.t): Search term for filtering players by username
    - `:order` (Order): Order of sorting, default is descending
    - `:countries` (String.t): Comma-separated list of countries for filtering
    - `:mapsType` (String.t): Type of maps to consider, default is 'ranked'
    - `:ppType` (String.t): Type of performance points, default is 'general'
    - `:leaderboardContext` (LeaderboardContexts): Context of the leaderboard, default is 'General'
    - `:friends` (boolean()): Flag to filter only friends, default is false
    - `:pp_range` (String.t): Comma-separated range to filter by amount of pp, default is null
    - `:score_range` (String.t): Comma-separated range to filter by total score, default is null
    - `:platform` (String.t): Comma-separated range to filter by platform value, default is null
    - `:role` (String.t): Comma-separated range to filter by role, default is null
    - `:hmd` (String.t): Comma-separated range to filter by hmd (headset), default is null
    - `:clans` (String.t): Comma-separated range to filter by clan tags, default is null
    - `:activityPeriod` (integer()): Value in seconds to filter by the last score time, default is null
    - `:banned` (boolean()): Flag to filter only banned players, default is null

  ### Returns

  - `{:ok, APIBL.Model.PlayerResponseWithStatsResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_get_players(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, APIBL.Model.PlayerResponseWithStatsResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def player_get_players(connection, opts \\ []) do
    optional_params = %{
      :sortBy => :query,
      :page => :query,
      :count => :query,
      :search => :query,
      :order => :query,
      :countries => :query,
      :mapsType => :query,
      :ppType => :query,
      :leaderboardContext => :query,
      :friends => :query,
      :pp_range => :query,
      :score_range => :query,
      :platform => :query,
      :role => :query,
      :hmd => :query,
      :clans => :query,
      :activityPeriod => :query,
      :banned => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/players")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerResponseWithStatsResponseWithMetadata},
      {400, false},
      {404, false}
    ])
  end
end