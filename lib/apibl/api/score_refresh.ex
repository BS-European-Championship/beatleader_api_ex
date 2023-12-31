# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.ScoreRefresh do
  @moduledoc """
  API calls for all endpoints tagged `ScoreRefresh`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_refresh_bulk_rank_refresh_context_scores(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def score_refresh_bulk_rank_refresh_context_scores(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/scores/bulkrankrefresh")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `leaderboard_context` (LeaderboardContexts): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_refresh_bulk_rank_refresh_scores(Tesla.Env.client, APIBL.Model.LeaderboardContexts.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def score_refresh_bulk_rank_refresh_scores(connection, leaderboard_context, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/scores/#{leaderboard_context}/bulkrankrefresh")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `leaderboard_context` (LeaderboardContexts): 
  - `opts` (keyword): Optional parameters
    - `:leaderboardId` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_refresh_bulk_refresh_context_scores(Tesla.Env.client, APIBL.Model.LeaderboardContexts.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def score_refresh_bulk_refresh_context_scores(connection, leaderboard_context, opts \\ []) do
    optional_params = %{
      :leaderboardId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scores/#{leaderboard_context}/bulkrefresh")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:leaderboardId` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_refresh_bulk_refresh_scores(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def score_refresh_bulk_refresh_scores(connection, opts \\ []) do
    optional_params = %{
      :leaderboardId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scores/bulkrefresh")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:leaderboardId` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_refresh_bulk_refresh_scores_all_contexts(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def score_refresh_bulk_refresh_scores_all_contexts(connection, opts \\ []) do
    optional_params = %{
      :leaderboardId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scores/bulkrefresh/allContexts")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:leaderboardId` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec score_refresh_refresh_scores(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def score_refresh_refresh_scores(connection, opts \\ []) do
    optional_params = %{
      :leaderboardId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scores/refresh")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
