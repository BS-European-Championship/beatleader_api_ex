# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.PlayerLeaderboardStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :playerId,
    :type,
    :timeset,
    :time,
    :score,
    :replay,
    :leaderboardId,
    :leaderboard,
    :scoreId,
    :baseScore,
    :modifiedScore,
    :accuracy,
    :pp,
    :bonusPp,
    :passPP,
    :accPP,
    :techPP,
    :qualification,
    :weight,
    :rank,
    :countryRank,
    :modifiers,
    :badCuts,
    :missedNotes,
    :bombCuts,
    :wallsHit,
    :pauses,
    :fullCombo,
    :maxCombo,
    :fcAccuracy,
    :fcPp,
    :hmd,
    :controller,
    :accRight,
    :accLeft,
    :timepost,
    :platform,
    :authorizedReplayWatched,
    :anonimusReplayWatched,
    :replayOffsetsId,
    :replayOffsets,
    :country,
    :maxStreak,
    :leftTiming,
    :rightTiming,
    :priority,
    :scoreImprovementId,
    :scoreImprovement
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :playerId => String.t | nil,
    :type => APIBL.Model.EndType.t | nil,
    :timeset => integer() | nil,
    :time => float() | nil,
    :score => integer() | nil,
    :replay => String.t | nil,
    :leaderboardId => String.t | nil,
    :leaderboard => APIBL.Model.Leaderboard.t | nil,
    :scoreId => integer() | nil,
    :baseScore => integer() | nil,
    :modifiedScore => integer() | nil,
    :accuracy => float() | nil,
    :pp => float() | nil,
    :bonusPp => float() | nil,
    :passPP => float() | nil,
    :accPP => float() | nil,
    :techPP => float() | nil,
    :qualification => boolean() | nil,
    :weight => float() | nil,
    :rank => integer() | nil,
    :countryRank => integer() | nil,
    :modifiers => String.t | nil,
    :badCuts => integer() | nil,
    :missedNotes => integer() | nil,
    :bombCuts => integer() | nil,
    :wallsHit => integer() | nil,
    :pauses => integer() | nil,
    :fullCombo => boolean() | nil,
    :maxCombo => integer() | nil,
    :fcAccuracy => float() | nil,
    :fcPp => float() | nil,
    :hmd => APIBL.Model.Hmd.t | nil,
    :controller => APIBL.Model.ControllerEnum.t | nil,
    :accRight => float() | nil,
    :accLeft => float() | nil,
    :timepost => integer() | nil,
    :platform => String.t | nil,
    :authorizedReplayWatched => integer() | nil,
    :anonimusReplayWatched => integer() | nil,
    :replayOffsetsId => integer() | nil,
    :replayOffsets => APIBL.Model.ReplayOffsets.t | nil,
    :country => String.t | nil,
    :maxStreak => integer() | nil,
    :leftTiming => float() | nil,
    :rightTiming => float() | nil,
    :priority => integer() | nil,
    :scoreImprovementId => integer() | nil,
    :scoreImprovement => APIBL.Model.ScoreImprovement.t | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:type, :struct, APIBL.Model.EndType)
     |> Deserializer.deserialize(:leaderboard, :struct, APIBL.Model.Leaderboard)
     |> Deserializer.deserialize(:hmd, :struct, APIBL.Model.Hmd)
     |> Deserializer.deserialize(:controller, :struct, APIBL.Model.ControllerEnum)
     |> Deserializer.deserialize(:replayOffsets, :struct, APIBL.Model.ReplayOffsets)
     |> Deserializer.deserialize(:scoreImprovement, :struct, APIBL.Model.ScoreImprovement)
  end
end
