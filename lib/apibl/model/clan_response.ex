# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.ClanResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :tag,
    :color
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :tag => String.t | nil,
    :color => String.t | nil
  }

  def decode(value) do
    value
  end
end

