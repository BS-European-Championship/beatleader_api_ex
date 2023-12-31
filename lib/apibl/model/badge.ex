# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.Badge do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :description,
    :image,
    :link,
    :timeset,
    :hidden
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :description => String.t | nil,
    :image => String.t | nil,
    :link => String.t | nil,
    :timeset => integer() | nil,
    :hidden => boolean() | nil
  }

  def decode(value) do
    value
  end
end

