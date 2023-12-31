# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.WinTracker do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :won,
    :endTime,
    :nbOfPause,
    :totalPauseDuration,
    :jumpDistance,
    :averageHeight,
    :averageHeadPosition,
    :totalScore,
    :maxScore
  ]

  @type t :: %__MODULE__{
    :won => boolean() | nil,
    :endTime => float() | nil,
    :nbOfPause => integer() | nil,
    :totalPauseDuration => float() | nil,
    :jumpDistance => float() | nil,
    :averageHeight => float() | nil,
    :averageHeadPosition => APIBL.Model.AveragePosition.t | nil,
    :totalScore => integer() | nil,
    :maxScore => integer() | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:averageHeadPosition, :struct, APIBL.Model.AveragePosition)
  end
end

