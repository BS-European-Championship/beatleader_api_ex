# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Socials do
  @moduledoc """
  API calls for all endpoints tagged `Socials`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:returnUrl` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec socials_link_beat_leader(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def socials_link_beat_leader(connection, opts \\ []) do
    optional_params = %{
      :returnUrl => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkBeatLeader")
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

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec socials_link_discord(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def socials_link_discord(connection, opts \\ []) do
    optional_params = %{
      :returnUrl => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkDiscord")
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

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec socials_link_google(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def socials_link_google(connection, opts \\ []) do
    optional_params = %{
      :returnUrl => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkGoogle")
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

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec socials_link_twitch(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def socials_link_twitch(connection, opts \\ []) do
    optional_params = %{
      :returnUrl => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkTwitch")
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

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec socials_link_twitter(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def socials_link_twitter(connection, opts \\ []) do
    optional_params = %{
      :returnUrl => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/user/linkTwitter")
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
    - `:provider` (String.t): 
    - `:returnUrl` (String.t): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec socials_unlink(Tesla.Env.client, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def socials_unlink(connection, opts \\ []) do
    optional_params = %{
      :provider => :form,
      :returnUrl => :form
    }

    request =
      %{}
      |> method(:post)
      |> url("/user/unlink")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
