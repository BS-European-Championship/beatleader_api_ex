# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.ReeSabersPreset do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :ownerId,
    :owner,
    :name,
    :description,
    :coverLink,
    :version,
    :jsonLinks,
    :textureLinks,
    :tags,
    :timeposted,
    :timeupdated,
    :downloadsCount,
    :questDownloadsCount,
    :pcDownloadsCount,
    :reactionsCount,
    :reactions,
    :commentsDisabled,
    :commentsCount,
    :comments,
    :remixId,
    :remix,
    :remixes
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :ownerId => String.t | nil,
    :owner => APIBL.Model.Player.t | nil,
    :name => String.t | nil,
    :description => String.t | nil,
    :coverLink => String.t | nil,
    :version => String.t | nil,
    :jsonLinks => String.t | nil,
    :textureLinks => String.t | nil,
    :tags => APIBL.Model.ReeSabersTags.t | nil,
    :timeposted => integer() | nil,
    :timeupdated => integer() | nil,
    :downloadsCount => integer() | nil,
    :questDownloadsCount => integer() | nil,
    :pcDownloadsCount => integer() | nil,
    :reactionsCount => integer() | nil,
    :reactions => [APIBL.Model.ReeSabersReaction.t] | nil,
    :commentsDisabled => boolean() | nil,
    :commentsCount => integer() | nil,
    :comments => [APIBL.Model.ReeSabersComment.t] | nil,
    :remixId => integer() | nil,
    :remix => APIBL.Model.ReeSabersPreset.t | nil,
    :remixes => [APIBL.Model.ReeSabersPreset.t] | nil
  }

  alias APIBL.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:owner, :struct, APIBL.Model.Player)
     |> Deserializer.deserialize(:tags, :struct, APIBL.Model.ReeSabersTags)
     |> Deserializer.deserialize(:reactions, :list, APIBL.Model.ReeSabersReaction)
     |> Deserializer.deserialize(:comments, :list, APIBL.Model.ReeSabersComment)
     |> Deserializer.deserialize(:remix, :struct, APIBL.Model.ReeSabersPreset)
     |> Deserializer.deserialize(:remixes, :list, APIBL.Model.ReeSabersPreset)
  end
end
