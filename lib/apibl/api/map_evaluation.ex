# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Api.MapEvaluation do
  @moduledoc """
  API calls for all endpoints tagged `MapEvaluation`.
  """

  alias APIBL.Connection
  import APIBL.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (APIBL.Connection): Connection to server
  - `id` (String.t): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, APIBL.Model.MapCheckResult.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec map_evaluation_get(Tesla.Env.client, String.t, keyword()) :: {:ok, APIBL.Model.MapCheckResult.t} | {:error, Tesla.Env.t}
  def map_evaluation_get(connection, id, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/criteria/check/#{id}")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, APIBL.Model.MapCheckResult}
    ])
  end
end
