# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.PlayerResponseWithStats do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name,
    :platform,
    :avatar,
    :country,
    :bot,
    :pp,
    :rank,
    :countryRank,
    :role,
    :socials,
    :contextExtensions,
    :patreonFeatures,
    :profileSettings,
    :clans,
    :accPp,
    :passPp,
    :techPp,
    :scoreStats,
    :lastWeekPp,
    :lastWeekRank,
    :lastWeekCountryRank,
    :eventsParticipating
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :name => String.t | nil,
    :platform => String.t | nil,
    :avatar => String.t | nil,
    :country => String.t | nil,
    :bot => boolean() | nil,
    :pp => float() | nil,
    :rank => integer() | nil,
    :countryRank => integer() | nil,
    :role => String.t | nil,
    :socials => [APIBL.Model.PlayerSocial.t] | nil,
    :contextExtensions => [APIBL.Model.PlayerContextExtension.t] | nil,
    :patreonFeatures => APIBL.Model.PatreonFeatures.t | nil,
    :profileSettings => APIBL.Model.ProfileSettings.t | nil,
    :clans => [APIBL.Model.ClanResponse.t] | nil,
    :accPp => float() | nil,
    :passPp => float() | nil,
    :techPp => float() | nil,
    :scoreStats => APIBL.Model.PlayerScoreStats.t | nil,
    :lastWeekPp => float() | nil,
    :lastWeekRank => integer() | nil,
    :lastWeekCountryRank => integer() | nil,
    :eventsParticipating => [APIBL.Model.EventPlayer.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:socials, :list, APIBL.Model.PlayerSocial)
     |> Deserializer.deserialize(:contextExtensions, :list, APIBL.Model.PlayerContextExtension)
     |> Deserializer.deserialize(:patreonFeatures, :struct, APIBL.Model.PatreonFeatures)
     |> Deserializer.deserialize(:profileSettings, :struct, APIBL.Model.ProfileSettings)
     |> Deserializer.deserialize(:clans, :list, APIBL.Model.ClanResponse)
     |> Deserializer.deserialize(:scoreStats, :struct, APIBL.Model.PlayerScoreStats)
     |> Deserializer.deserialize(:eventsParticipating, :list, APIBL.Model.EventPlayer)
  end
end

