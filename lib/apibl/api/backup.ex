# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.Backup do
  @moduledoc """
  API calls for all endpoints tagged `Backup`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `container` (S3Container): 
  - `filename` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec backup_get_backup_file(Tesla.Env.client, APIBL.Model.S3Container.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def backup_get_backup_file(connection, container, filename, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/backup/file/#{container}/#{filename}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false}
    ])
  end
end
