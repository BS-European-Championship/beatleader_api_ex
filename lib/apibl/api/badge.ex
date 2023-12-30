# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Badge do
  @moduledoc """
  API calls for all endpoints tagged `Badge`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `player_id` (String.t): 
  - `badge_id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.Player.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec badge_add_badge(Tesla.Env.client, String.t, integer(), keyword()) :: {:ok, APIBL.Model.Player.t} | {:error, Tesla.Env.t}
  def badge_add_badge(connection, player_id, badge_id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/player/badge/#{player_id}/#{badge_id}")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.Player}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:description` (String.t): 
    - `:link` (String.t): 
    - `:image` (String.t): 
    - `:timeset` (integer()): 
    - `:playerId` (String.t): 

  ### Returns

  - `{:ok, APIBL.Model.Badge.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec badge_create_badge(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.Badge.t} | {:error, Tesla.Env.t}
  def badge_create_badge(connection, opts \\ []) do
    optional_params = %{
      :description => :query,
      :link => :query,
      :image => :query,
      :timeset => :query,
      :playerId => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/badge")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.Badge}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters
    - `:description` (String.t): 
    - `:image` (String.t): 
    - `:link` (String.t): 

  ### Returns

  - `{:ok, APIBL.Model.Badge.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec badge_update_badge(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.Badge.t} | {:error, Tesla.Env.t}
  def badge_update_badge(connection, id, opts \\ []) do
    optional_params = %{
      :description => :query,
      :image => :query,
      :link => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/badge/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.Badge}
    ])
  end
end
