# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.ProfileSettings do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :bio,
    :message,
    :effectName,
    :profileAppearance,
    :hue,
    :saturation,
    :leftSaberColor,
    :rightSaberColor,
    :profileCover,
    :starredFriends,
    :showBots,
    :showAllRatings
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :bio => String.t | nil,
    :message => String.t | nil,
    :effectName => String.t | nil,
    :profileAppearance => String.t | nil,
    :hue => float() | nil,
    :saturation => float() | nil,
    :leftSaberColor => String.t | nil,
    :rightSaberColor => String.t | nil,
    :profileCover => String.t | nil,
    :starredFriends => String.t | nil,
    :showBots => boolean() | nil,
    :showAllRatings => boolean() | nil
  }

  def decode(value) do
    value
  end
end

