# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.QualificationVote do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :playerId,
    :timeset,
    :value,
    :editTimeset,
    :edited,
    :rankQualificationId,
    :rankQualification,
    :discordRTMessageId
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :playerId => String.t | nil,
    :timeset => integer() | nil,
    :value => APIBL.Model.MapQuality.t | nil,
    :editTimeset => integer() | nil,
    :edited => boolean() | nil,
    :rankQualificationId => integer() | nil,
    :rankQualification => APIBL.Model.RankQualification.t | nil,
    :discordRTMessageId => String.t | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:value, :struct, APIBL.Model.MapQuality)
     |> Deserializer.deserialize(:rankQualification, :struct, APIBL.Model.RankQualification)
  end
end

