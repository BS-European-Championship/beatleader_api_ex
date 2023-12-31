# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.DiffModResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :difficultyName,
    :modeName,
    :stars,
    :status,
    :type,
    :votes,
    :modifierValues,
    :modifiersRating,
    :passRating,
    :accRating,
    :techRating
  ]

  @type t :: %__MODULE__{
    :difficultyName => String.t | nil,
    :modeName => String.t | nil,
    :stars => float() | nil,
    :status => APIBL.Model.DifficultyStatus.t | nil,
    :type => integer() | nil,
    :votes => [float()] | nil,
    :modifierValues => APIBL.Model.ModifiersMap.t | nil,
    :modifiersRating => APIBL.Model.ModifiersRating.t | nil,
    :passRating => float() | nil,
    :accRating => float() | nil,
    :techRating => float() | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:status, :struct, APIBL.Model.DifficultyStatus)
     |> Deserializer.deserialize(:modifierValues, :struct, APIBL.Model.ModifiersMap)
     |> Deserializer.deserialize(:modifiersRating, :struct, APIBL.Model.ModifiersRating)
  end
end

