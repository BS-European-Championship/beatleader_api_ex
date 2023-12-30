# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.Playlist do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :isShared,
    :link,
    :ownerId,
    :hash
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :isShared => boolean() | nil,
    :link => String.t | nil,
    :ownerId => String.t | nil,
    :hash => String.t | nil
  }

  def decode(value) do
    value
  end
end
