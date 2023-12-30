# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.Player do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :platform,
    :avatar,
    :country,
    :role,
    :mapperId,
    :pp,
    :accPp,
    :techPp,
    :passPp,
    :rank,
    :countryRank,
    :lastWeekPp,
    :lastWeekRank,
    :lastWeekCountryRank,
    :banned,
    :bot,
    :inactive,
    :externalProfileUrl,
    :scoreStats,
    :clans,
    :clanOrder,
    :friends,
    :badges,
    :patreonFeatures,
    :profileSettings,
    :changes,
    :history,
    :eventsParticipating,
    :socials,
    :achievements,
    :contextExtensions,
    :presets
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :platform => String.t | nil,
    :avatar => String.t | nil,
    :country => String.t | nil,
    :role => String.t | nil,
    :mapperId => integer() | nil,
    :pp => float() | nil,
    :accPp => float() | nil,
    :techPp => float() | nil,
    :passPp => float() | nil,
    :rank => integer() | nil,
    :countryRank => integer() | nil,
    :lastWeekPp => float() | nil,
    :lastWeekRank => integer() | nil,
    :lastWeekCountryRank => integer() | nil,
    :banned => boolean() | nil,
    :bot => boolean() | nil,
    :inactive => boolean() | nil,
    :externalProfileUrl => String.t | nil,
    :scoreStats => APIBL.Model.PlayerScoreStats.t | nil,
    :clans => [APIBL.Model.Clan.t] | nil,
    :clanOrder => String.t | nil,
    :friends => [APIBL.Model.PlayerFriends.t] | nil,
    :badges => [APIBL.Model.Badge.t] | nil,
    :patreonFeatures => APIBL.Model.PatreonFeatures.t | nil,
    :profileSettings => APIBL.Model.ProfileSettings.t | nil,
    :changes => [APIBL.Model.PlayerChange.t] | nil,
    :history => [APIBL.Model.PlayerScoreStatsHistory.t] | nil,
    :eventsParticipating => [APIBL.Model.EventPlayer.t] | nil,
    :socials => [APIBL.Model.PlayerSocial.t] | nil,
    :achievements => [APIBL.Model.Achievement.t] | nil,
    :contextExtensions => [APIBL.Model.PlayerContextExtension.t] | nil,
    :presets => [APIBL.Model.ReeSabersPreset.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:scoreStats, :struct, APIBL.Model.PlayerScoreStats)
     |> Deserializer.deserialize(:clans, :list, APIBL.Model.Clan)
     |> Deserializer.deserialize(:friends, :list, APIBL.Model.PlayerFriends)
     |> Deserializer.deserialize(:badges, :list, APIBL.Model.Badge)
     |> Deserializer.deserialize(:patreonFeatures, :struct, APIBL.Model.PatreonFeatures)
     |> Deserializer.deserialize(:profileSettings, :struct, APIBL.Model.ProfileSettings)
     |> Deserializer.deserialize(:changes, :list, APIBL.Model.PlayerChange)
     |> Deserializer.deserialize(:history, :list, APIBL.Model.PlayerScoreStatsHistory)
     |> Deserializer.deserialize(:eventsParticipating, :list, APIBL.Model.EventPlayer)
     |> Deserializer.deserialize(:socials, :list, APIBL.Model.PlayerSocial)
     |> Deserializer.deserialize(:achievements, :list, APIBL.Model.Achievement)
     |> Deserializer.deserialize(:contextExtensions, :list, APIBL.Model.PlayerContextExtension)
     |> Deserializer.deserialize(:presets, :list, APIBL.Model.ReeSabersPreset)
  end
end

