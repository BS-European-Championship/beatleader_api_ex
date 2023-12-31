# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.LeaderboardResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :song,
    :difficulty,
    :scores,
    :changes,
    :qualification,
    :reweight,
    :leaderboardGroup,
    :plays,
    :clan,
    :clanRankingContested
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :song => APIBL.Model.Song.t | nil,
    :difficulty => APIBL.Model.DifficultyResponse.t | nil,
    :scores => [APIBL.Model.ScoreResponse.t] | nil,
    :changes => [APIBL.Model.LeaderboardChange.t] | nil,
    :qualification => APIBL.Model.RankQualification.t | nil,
    :reweight => APIBL.Model.RankUpdate.t | nil,
    :leaderboardGroup => [APIBL.Model.LeaderboardGroupEntry.t] | nil,
    :plays => integer() | nil,
    :clan => APIBL.Model.Clan.t | nil,
    :clanRankingContested => boolean() | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:song, :struct, APIBL.Model.Song)
     |> Deserializer.deserialize(:difficulty, :struct, APIBL.Model.DifficultyResponse)
     |> Deserializer.deserialize(:scores, :list, APIBL.Model.ScoreResponse)
     |> Deserializer.deserialize(:changes, :list, APIBL.Model.LeaderboardChange)
     |> Deserializer.deserialize(:qualification, :struct, APIBL.Model.RankQualification)
     |> Deserializer.deserialize(:reweight, :struct, APIBL.Model.RankUpdate)
     |> Deserializer.deserialize(:leaderboardGroup, :list, APIBL.Model.LeaderboardGroupEntry)
     |> Deserializer.deserialize(:clan, :struct, APIBL.Model.Clan)
  end
end

