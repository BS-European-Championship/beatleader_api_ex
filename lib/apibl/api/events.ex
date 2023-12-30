# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Events do
  @moduledoc """
  API calls for all endpoints tagged `Events`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_delete_event(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def events_delete_event(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/event/#{id}")
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
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.EventRanking.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_get_event(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.EventRanking.t} | {:error, Tesla.Env.t}
  def events_get_event(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/event/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.EventRanking}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters
    - `:sortBy` (String.t): 
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:search` (String.t): 
    - `:order` (Order): 
    - `:countries` (String.t): 

  ### Returns

  - `{:ok, APIBL.Model.PlayerResponseWithStatsResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_get_event_players(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.PlayerResponseWithStatsResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def events_get_event_players(connection, id, opts \\ []) do
    optional_params = %{
      :sortBy => :query,
      :page => :query,
      :count => :query,
      :search => :query,
      :order => :query,
      :countries => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/event/#{id}/players")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.PlayerResponseWithStatsResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:sortBy` (String.t): 
    - `:search` (String.t): 
    - `:order` (Order): 

  ### Returns

  - `{:ok, APIBL.Model.EventResponseResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_get_events(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.EventResponseResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def events_get_events(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query,
      :sortBy => :query,
      :search => :query,
      :order => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/events")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.EventResponseResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_refresh_event(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def events_refresh_event(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/event/#{id}/refresh")
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
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters
    - `:name` (String.t): 
    - `:endDate` (integer()): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_start_event(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def events_start_event(connection, id, opts \\ []) do
    optional_params = %{
      :name => :query,
      :endDate => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/event/start/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
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

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec events_wefwfwef(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def events_wefwfwef(connection, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/wefwfwef")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
