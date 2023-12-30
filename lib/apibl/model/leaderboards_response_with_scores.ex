# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.LeaderboardsResponseWithScores do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :song,
    :leaderboards
  ]

  @type t :: %__MODULE__{
    :song => APIBL.Model.Song.t | nil,
    :leaderboards => [APIBL.Model.LeaderboardsInfoResponseWithScore.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:song, :struct, APIBL.Model.Song)
     |> Deserializer.deserialize(:leaderboards, :list, APIBL.Model.LeaderboardsInfoResponseWithScore)
  end
end

