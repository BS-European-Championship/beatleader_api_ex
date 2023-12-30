# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.PlayerScoreStatsHistory do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :context,
    :timestamp,
    :playerId,
    :pp,
    :rank,
    :countryRank,
    :totalScore,
    :totalUnrankedScore,
    :totalRankedScore,
    :lastScoreTime,
    :lastUnrankedScoreTime,
    :lastRankedScoreTime,
    :averageRankedAccuracy,
    :averageWeightedRankedAccuracy,
    :averageUnrankedAccuracy,
    :averageAccuracy,
    :medianRankedAccuracy,
    :medianAccuracy,
    :topRankedAccuracy,
    :topUnrankedAccuracy,
    :topAccuracy,
    :topPp,
    :topBonusPP,
    :peakRank,
    :maxStreak,
    :averageLeftTiming,
    :averageRightTiming,
    :rankedPlayCount,
    :unrankedPlayCount,
    :totalPlayCount,
    :rankedImprovementsCount,
    :unrankedImprovementsCount,
    :totalImprovementsCount,
    :averageRankedRank,
    :averageWeightedRankedRank,
    :averageUnrankedRank,
    :averageRank,
    :sspPlays,
    :ssPlays,
    :spPlays,
    :sPlays,
    :aPlays,
    :topPlatform,
    :topHMD,
    :dailyImprovements,
    :replaysWatched,
    :watchedReplays
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :context => APIBL.Model.LeaderboardContexts.t | nil,
    :timestamp => integer() | nil,
    :playerId => String.t | nil,
    :pp => float() | nil,
    :rank => integer() | nil,
    :countryRank => integer() | nil,
    :totalScore => integer() | nil,
    :totalUnrankedScore => integer() | nil,
    :totalRankedScore => integer() | nil,
    :lastScoreTime => integer() | nil,
    :lastUnrankedScoreTime => integer() | nil,
    :lastRankedScoreTime => integer() | nil,
    :averageRankedAccuracy => float() | nil,
    :averageWeightedRankedAccuracy => float() | nil,
    :averageUnrankedAccuracy => float() | nil,
    :averageAccuracy => float() | nil,
    :medianRankedAccuracy => float() | nil,
    :medianAccuracy => float() | nil,
    :topRankedAccuracy => float() | nil,
    :topUnrankedAccuracy => float() | nil,
    :topAccuracy => float() | nil,
    :topPp => float() | nil,
    :topBonusPP => float() | nil,
    :peakRank => float() | nil,
    :maxStreak => integer() | nil,
    :averageLeftTiming => float() | nil,
    :averageRightTiming => float() | nil,
    :rankedPlayCount => integer() | nil,
    :unrankedPlayCount => integer() | nil,
    :totalPlayCount => integer() | nil,
    :rankedImprovementsCount => integer() | nil,
    :unrankedImprovementsCount => integer() | nil,
    :totalImprovementsCount => integer() | nil,
    :averageRankedRank => float() | nil,
    :averageWeightedRankedRank => float() | nil,
    :averageUnrankedRank => float() | nil,
    :averageRank => float() | nil,
    :sspPlays => integer() | nil,
    :ssPlays => integer() | nil,
    :spPlays => integer() | nil,
    :sPlays => integer() | nil,
    :aPlays => integer() | nil,
    :topPlatform => String.t | nil,
    :topHMD => APIBL.Model.Hmd.t | nil,
    :dailyImprovements => integer() | nil,
    :replaysWatched => integer() | nil,
    :watchedReplays => integer() | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:context, :struct, APIBL.Model.LeaderboardContexts)
     |> Deserializer.deserialize(:topHMD, :struct, APIBL.Model.Hmd)
  end
end

