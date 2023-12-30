# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.CompactLeaderboard do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :songHash,
    :modeName,
    :difficulty
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :songHash => String.t | nil,
    :modeName => String.t | nil,
    :difficulty => integer() | nil
  }

  def decode(value) do
    value
  end
end
