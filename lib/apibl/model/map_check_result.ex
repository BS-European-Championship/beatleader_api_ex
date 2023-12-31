# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.MapCheckResult do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :diffs,
    :profanityCheck
  ]

  @type t :: %__MODULE__{
    :diffs => [APIBL.Model.DiffCheckResult.t] | nil,
    :profanityCheck => [APIBL.Model.ProfanityCheckResult.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:diffs, :list, APIBL.Model.DiffCheckResult)
     |> Deserializer.deserialize(:profanityCheck, :list, APIBL.Model.ProfanityCheckResult)
  end
end

