# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.RankUpdate do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :timeset,
    :rtMember,
    :keep,
    :stars,
    :passRating,
    :techRating,
    :predictedAcc,
    :type,
    :criteriaMet,
    :criteriaCommentary,
    :finished,
    :modifiers,
    :modifiersRating,
    :changes
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :timeset => integer() | nil,
    :rtMember => String.t | nil,
    :keep => boolean() | nil,
    :stars => float() | nil,
    :passRating => float() | nil,
    :techRating => float() | nil,
    :predictedAcc => float() | nil,
    :type => integer() | nil,
    :criteriaMet => integer() | nil,
    :criteriaCommentary => String.t | nil,
    :finished => boolean() | nil,
    :modifiers => APIBL.Model.ModifiersMap.t | nil,
    :modifiersRating => APIBL.Model.ModifiersRating.t | nil,
    :changes => [APIBL.Model.RankUpdateChange.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:modifiers, :struct, APIBL.Model.ModifiersMap)
     |> Deserializer.deserialize(:modifiersRating, :struct, APIBL.Model.ModifiersRating)
     |> Deserializer.deserialize(:changes, :list, APIBL.Model.RankUpdateChange)
  end
end

