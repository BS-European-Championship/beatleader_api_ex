# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.PlayerScores do
  @moduledoc """
  API calls for all endpoints tagged `PlayerScores`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """
  Retrieve player's accuracy graph
  Usefull to visualise player's performance relative to map's complexity

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Player's unique identifier
  - `opts` (keyword): Optional parameters
    - `:leaderboardContext` (LeaderboardContexts): Filter scores by leaderboard context, default is 'General'

  ### Returns

  - `{:ok, [%GraphResponse{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_acc_graph(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, list(APIBL.Model.GraphResponse.t)} | {:error, Tesla.Env.t}
  def player_scores_acc_graph(connection, id, opts \\ []) do
    optional_params = %{
      :leaderboardContext => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/accgraph")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.GraphResponse},
      {400, false},
      {404, false}
    ])
  end

  @doc """
  Retrieve player's scores in a compact form
  Fetches a paginated list of scores for a specified player ID. Returns less info to save bandwith or processing time

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Player's unique identifier
  - `opts` (keyword): Optional parameters
    - `:sortBy` (String.t): Sorting criteria for scores, default is by 'date'
    - `:order` (Order): Order of sorting, default is descending
    - `:page` (integer()): Page number for pagination, default is 1
    - `:count` (integer()): Number of scores per page, default is 8
    - `:search` (String.t): Filter scores by search term in song name, author or mapper. Default is null
    - `:diff` (String.t): Filter scores by map difficulty(Easy, Expert, Expert+, etc), default is null
    - `:mode` (String.t): Filter scores by map characteristic(Standard, OneSaber, etc), default is null
    - `:requirements` (Requirements): Filter scores by map requirements, default is 'None'
    - `:scoreStatus` (ScoreFilterStatus): Filter scores by score status, default is 'None'
    - `:leaderboardContext` (LeaderboardContexts): Filter scores by leaderboard context, default is 'General'
    - `:type` (String.t): Filter scores by map status, default is null
    - `:modifiers` (String.t): Filter scores by modifiers(GN, SF, etc), default is null
    - `:stars_from` (float()): Filter scores on ranked maps with stars greater than, default is null
    - `:stars_to` (float()): Filter scores on ranked maps with stars lower than, default is null
    - `:time_from` (integer()): Filter scores made after unix timestamp, default is null
    - `:time_to` (integer()): Filter scores made before unix timestamp, default is null
    - `:eventId` (integer()): Show only scores from the event with ID, default is null

  ### Returns

  - `{:ok, APIBL.Model.CompactScoreResponseResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_get_compact_scores(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APIBL.Model.CompactScoreResponseResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def player_scores_get_compact_scores(connection, id, opts \\ []) do
    optional_params = %{
      :sortBy => :query,
      :order => :query,
      :page => :query,
      :count => :query,
      :search => :query,
      :diff => :query,
      :mode => :query,
      :requirements => :query,
      :scoreStatus => :query,
      :leaderboardContext => :query,
      :type => :query,
      :modifiers => :query,
      :stars_from => :query,
      :stars_to => :query,
      :time_from => :query,
      :time_to => :query,
      :eventId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/scores/compact")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.CompactScoreResponseResponseWithMetadata},
      {400, false},
      {404, false}
    ])
  end

  @doc """
  Retrieve player's statistic history
  Fetches a list of player's performance metrics and various stats saved daily

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Player's unique identifier
  - `opts` (keyword): Optional parameters
    - `:leaderboardContext` (LeaderboardContexts): Filter scores by leaderboard context, default is 'General'
    - `:count` (integer()): Amount of days to include

  ### Returns

  - `{:ok, [%PlayerScoreStatsHistory{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_get_history(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, list(APIBL.Model.PlayerScoreStatsHistory.t)} | {:error, Tesla.Env.t}
  def player_scores_get_history(connection, id, opts \\ []) do
    optional_params = %{
      :leaderboardContext => :query,
      :count => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/history")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerScoreStatsHistory},
      {400, false},
      {404, false}
    ])
  end

  @doc """
  Retrieve player's pinned scores
  Fetches a paginated list of scores pinned by player for their ID.

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Player's unique identifier
  - `opts` (keyword): Optional parameters
    - `:leaderboardContext` (LeaderboardContexts): Filter scores by leaderboard context, default is 'General'

  ### Returns

  - `{:ok, [%ScoreResponseWithMyScore{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_get_pinned_scores(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, list(APIBL.Model.ScoreResponseWithMyScore.t)} | {:error, Tesla.Env.t}
  def player_scores_get_pinned_scores(connection, id, opts \\ []) do
    optional_params = %{
      :leaderboardContext => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/pinnedScores")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ScoreResponseWithMyScore},
      {400, false},
      {404, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters
    - `:sortBy` (String.t): 
    - `:order` (Order): 
    - `:count` (integer()): 
    - `:search` (String.t): 
    - `:diff` (String.t): 
    - `:mode` (String.t): 
    - `:requirements` (Requirements): 
    - `:scoreStatus` (ScoreFilterStatus): 
    - `:leaderboardContext` (LeaderboardContexts): 
    - `:type` (String.t): 
    - `:modifiers` (String.t): 
    - `:stars_from` (float()): 
    - `:stars_to` (float()): 
    - `:time_from` (integer()): 
    - `:time_to` (integer()): 
    - `:eventId` (integer()): 
    - `:batch` (float()): 

  ### Returns

  - `{:ok, String.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_get_player_histogram(Tesla.Env.client, String.t, keyword()) :: {:ok, String.t} | {:error, Tesla.Env.t}
  def player_scores_get_player_histogram(connection, id, opts \\ []) do
    optional_params = %{
      :sortBy => :query,
      :order => :query,
      :count => :query,
      :search => :query,
      :diff => :query,
      :mode => :query,
      :requirements => :query,
      :scoreStatus => :query,
      :leaderboardContext => :query,
      :type => :query,
      :modifiers => :query,
      :stars_from => :query,
      :stars_to => :query,
      :time_from => :query,
      :time_to => :query,
      :eventId => :query,
      :batch => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/histogram")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  Retrieve player's score for a specific map
  Fetches a score made by a Player with ID for a map specified by Hash and difficulty

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Player's unique identifier
  - `hash` (String.t): Maps's hash
  - `difficulty` (String.t): Maps's difficulty(Easy, Expert, Expert+, etc)
  - `mode` (String.t): Maps's characteristic(Standard, OneSaber, etc)
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, integer()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_get_score_value(Tesla.Env.client, String.t, String.t, String.t, String.t, keyword()) :: {:ok, nil} | {:ok, Integer.t} | {:error, Tesla.Env.t}
  def player_scores_get_score_value(connection, id, hash, difficulty, mode, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/scorevalue/#{hash}/#{difficulty}/#{mode}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {404, false}
    ])
  end

  @doc """
  Retrieve player's scores
  Fetches a paginated list of scores for a specified player ID. Allows filtering by various criteria like date, difficulty, mode, and more.

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): Player's unique identifier
  - `opts` (keyword): Optional parameters
    - `:sortBy` (String.t): Sorting criteria for scores, default is by 'date'
    - `:order` (Order): Order of sorting, default is descending
    - `:page` (integer()): Page number for pagination, default is 1
    - `:count` (integer()): Number of scores per page, default is 8
    - `:search` (String.t): Filter scores by search term in song name, author or mapper. Default is null
    - `:diff` (String.t): Filter scores by map difficulty(Easy, Expert, Expert+, etc), default is null
    - `:mode` (String.t): Filter scores by map characteristic(Standard, OneSaber, etc), default is null
    - `:requirements` (Requirements): Filter scores by map requirements, default is 'None'
    - `:scoreStatus` (ScoreFilterStatus): Filter scores by score status, default is 'None'
    - `:leaderboardContext` (LeaderboardContexts): Filter scores by leaderboard context, default is 'General'
    - `:type` (String.t): Filter scores by map status, default is null
    - `:modifiers` (String.t): Filter scores by modifiers(GN, SF, etc), default is null
    - `:stars_from` (float()): Filter scores on ranked maps with stars greater than, default is null
    - `:stars_to` (float()): Filter scores on ranked maps with stars lower than, default is null
    - `:time_from` (integer()): Filter scores made after unix timestamp, default is null
    - `:time_to` (integer()): Filter scores made before unix timestamp, default is null
    - `:eventId` (integer()): Show only scores from the event with ID, default is null

  ### Returns

  - `{:ok, APIBL.Model.ScoreResponseWithMyScoreResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec player_scores_get_scores(Tesla.Env.client, String.t, keyword()) :: {:ok, nil} | {:ok, APIBL.Model.ScoreResponseWithMyScoreResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def player_scores_get_scores(connection, id, opts \\ []) do
    optional_params = %{
      :sortBy => :query,
      :order => :query,
      :page => :query,
      :count => :query,
      :search => :query,
      :diff => :query,
      :mode => :query,
      :requirements => :query,
      :scoreStatus => :query,
      :leaderboardContext => :query,
      :type => :query,
      :modifiers => :query,
      :stars_from => :query,
      :stars_to => :query,
      :time_from => :query,
      :time_to => :query,
      :eventId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/player/#{id}/scores")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ScoreResponseWithMyScoreResponseWithMetadata},
      {400, false},
      {404, false}
    ])
  end
end