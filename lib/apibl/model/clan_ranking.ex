# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.ClanRanking do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :clanId,
    :clan,
    :lastUpdateTime,
    :averageRank,
    :pp,
    :averageAccuracy,
    :totalScore,
    :leaderboardId,
    :leaderboard
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :clanId => integer() | nil,
    :clan => APIBL.Model.Clan.t | nil,
    :lastUpdateTime => integer() | nil,
    :averageRank => float() | nil,
    :pp => float() | nil,
    :averageAccuracy => float() | nil,
    :totalScore => float() | nil,
    :leaderboardId => String.t | nil,
    :leaderboard => APIBL.Model.Leaderboard.t | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:clan, :struct, APIBL.Model.Clan)
     |> Deserializer.deserialize(:leaderboard, :struct, APIBL.Model.Leaderboard)
  end
end

