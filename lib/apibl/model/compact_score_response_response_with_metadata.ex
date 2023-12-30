# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.CompactScoreResponseResponseWithMetadata do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :metadata,
    :data
  ]

  @type t :: %__MODULE__{
    :metadata => APIBL.Model.Metadata.t | nil,
    :data => [APIBL.Model.CompactScoreResponse.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:metadata, :struct, APIBL.Model.Metadata)
     |> Deserializer.deserialize(:data, :list, APIBL.Model.CompactScoreResponse)
  end
end

