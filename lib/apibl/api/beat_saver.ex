# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.BeatSaver do
  @moduledoc """
  API calls for all endpoints tagged `BeatSaver`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:leaderboardId` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec beat_saver_approve_qualification(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def beat_saver_approve_qualification(connection, opts \\ []) do
    optional_params = %{
      :leaderboardId => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/approveQualification")
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
    - `:returnUrl` (String.t): 
    - `:oauthState` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec beat_saver_link_beat_saver(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def beat_saver_link_beat_saver(connection, opts \\ []) do
    optional_params = %{
      :returnUrl => :query,
      :oauthState => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkBeatSaver")
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
    - `:returnUrl` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec beat_saver_link_beat_saver_and_approve(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def beat_saver_link_beat_saver_and_approve(connection, opts \\ []) do
    optional_params = %{
      :leaderboardId => :query,
      :returnUrl => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkBeatSaverAndApprove")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
