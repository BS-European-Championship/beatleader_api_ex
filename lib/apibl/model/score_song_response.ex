# NOTE: This file is auto generated by OpenAPI Generator 7.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule APIBL.Model.ScoreSongResponse do
  @moduledoc """
  
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :hash,
    :cover,
    :name,
    :subName,
    :author,
    :mapper
  ]

  @type t :: %__MODULE__{
    :id => String.t | nil,
    :hash => String.t | nil,
    :cover => String.t | nil,
    :name => String.t | nil,
    :subName => String.t | nil,
    :author => String.t | nil,
    :mapper => String.t | nil
  }

  def decode(value) do
    value
  end
end

