# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.CompactScore do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :baseScore,
    :modifiedScore,
    :modifiers,
    :fullCombo,
    :maxCombo,
    :missedNotes,
    :badCuts,
    :hmd,
    :controller,
    :accuracy,
    :pp,
    :epochTime
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :baseScore => integer() | nil,
    :modifiedScore => integer() | nil,
    :modifiers => String.t | nil,
    :fullCombo => boolean() | nil,
    :maxCombo => integer() | nil,
    :missedNotes => integer() | nil,
    :badCuts => integer() | nil,
    :hmd => APIBL.Model.Hmd.t | nil,
    :controller => APIBL.Model.ControllerEnum.t | nil,
    :accuracy => float() | nil,
    :pp => float() | nil,
    :epochTime => integer() | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:hmd, :struct, APIBL.Model.Hmd)
     |> Deserializer.deserialize(:controller, :struct, APIBL.Model.ControllerEnum)
  end
end

