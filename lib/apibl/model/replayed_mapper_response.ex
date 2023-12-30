# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.ReplayedMapperResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :topMaps,
    :topPlayers,
    :tops,
    :playsCount,
    :failsCount,
    :fCsCount,
    :minutesPlayed,
    :playersCount
  ]

  @type t :: %__MODULE__{
    :topMaps => [APIBL.Model.TopMapTime.t] | nil,
    :topPlayers => [APIBL.Model.TopMapper.t] | nil,
    :tops => APIBL.Model.MapperTops.t | nil,
    :playsCount => integer() | nil,
    :failsCount => integer() | nil,
    :fCsCount => integer() | nil,
    :minutesPlayed => float() | nil,
    :playersCount => integer() | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:topMaps, :list, APIBL.Model.TopMapTime)
     |> Deserializer.deserialize(:topPlayers, :list, APIBL.Model.TopMapper)
     |> Deserializer.deserialize(:tops, :struct, APIBL.Model.MapperTops)
  end
end

