# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.ReeSabersPresets do
  @moduledoc """
  API calls for all endpoints tagged `ReeSabersPresets`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:name` (String.t): 
    - `:description` (String.t): 
    - `:commentsDisabled` (boolean()): 
    - `:tags` (APIBL.Model.ReeSabersTags.t): 

  ### Returns

  - `{:ok, APIBL.Model.ReeSabersPreset.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_create_preset(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.ReeSabersPreset.t} | {:error, Tesla.Env.t}
  def ree_sabers_presets_create_preset(connection, opts \\ []) do
    optional_params = %{
      :name => :form,
      :description => :form,
      :commentsDisabled => :form,
      :tags => :form
    }

    request =
      %{}
      |> method(:post)
      |> url("/reepreset/create")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ReeSabersPreset}
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
  @spec ree_sabers_presets_delete_comment(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ree_sabers_presets_delete_comment(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/preset/comment/#{id}")
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

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_delete_preset(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ree_sabers_presets_delete_preset(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/reepreset/#{id}")
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

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_download_preset_qmod(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ree_sabers_presets_download_preset_qmod(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reepresets/#{id}/download/quest")
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

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_download_preset_zip(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ree_sabers_presets_download_preset_zip(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/reepresets/#{id}/download/pc")
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
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:sort` (String.t): 
    - `:order` (Order): 
    - `:search` (String.t): 
    - `:capturedLeaderboards` (String.t): 

  ### Returns

  - `{:ok, APIBL.Model.ReeSabersCommentReeSabersPresetResponseWithMetadataAndContainer.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_get_preset(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.ReeSabersCommentReeSabersPresetResponseWithMetadataAndContainer.t} | {:error, Tesla.Env.t}
  def ree_sabers_presets_get_preset(connection, id, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query,
      :sort => :query,
      :order => :query,
      :search => :query,
      :capturedLeaderboards => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/reepreset/#{id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ReeSabersCommentReeSabersPresetResponseWithMetadataAndContainer}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:page` (integer()): 
    - `:count` (integer()): 
    - `:sort` (String.t): 
    - `:order` (Order): 
    - `:search` (String.t): 

  ### Returns

  - `{:ok, APIBL.Model.ReeSabersPresetResponseWithMetadata.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_list_presets(Tesla.Env.client, keyword()) :: {:ok, APIBL.Model.ReeSabersPresetResponseWithMetadata.t} | {:error, Tesla.Env.t}
  def ree_sabers_presets_list_presets(connection, opts \\ []) do
    optional_params = %{
      :page => :query,
      :count => :query,
      :sort => :query,
      :order => :query,
      :search => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/reepresets")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ReeSabersPresetResponseWithMetadata}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.ReeSabersComment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_post_comment(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.ReeSabersComment.t} | {:error, Tesla.Env.t}
  def ree_sabers_presets_post_comment(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/preset/comment/#{id}")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ReeSabersComment}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters
    - `:reaction` (ReeSaberReaction): 

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_toggle_reaction(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def ree_sabers_presets_toggle_reaction(connection, id, opts \\ []) do
    optional_params = %{
      :reaction => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/reepresets/#{id}/reaction/toggle")
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
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.ReeSabersComment.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_update_comment(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.ReeSabersComment.t} | {:error, Tesla.Env.t}
  def ree_sabers_presets_update_comment(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/preset/comment/#{id}")
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ReeSabersComment}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (integer()): 
  - `opts` (keyword): Optional parameters
    - `:name` (String.t): 
    - `:description` (String.t): 
    - `:commentsDisabled` (boolean()): 
    - `:filesToDelete` (String.t): 
    - `:tags` (APIBL.Model.ReeSabersTags.t): 

  ### Returns

  - `{:ok, APIBL.Model.ReeSabersPreset.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec ree_sabers_presets_update_preset(Tesla.Env.client, integer(), keyword()) :: {:ok, APIBL.Model.ReeSabersPreset.t} | {:error, Tesla.Env.t}
  def ree_sabers_presets_update_preset(connection, id, opts \\ []) do
    optional_params = %{
      :name => :form,
      :description => :form,
      :commentsDisabled => :form,
      :filesToDelete => :form,
      :tags => :form
    }

    request =
      %{}
      |> method(:put)
      |> url("/reepreset/#{id}")
      |> add_optional_params(optional_params, opts)
      |> ensure_body()
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.ReeSabersPreset}
    ])
  end
end
