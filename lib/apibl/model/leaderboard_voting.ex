# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.LeaderboardVoting do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :rankability,
    :stars,
    :type
  ]

  @type t :: %__MODULE__{
    :rankability => float() | nil,
    :stars => float() | nil,
    :type => [float()] | nil
  }

  def decode(value) do
    value
  end
end

