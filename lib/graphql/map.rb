require 'graphql'

require "graphql/map/version"

GraphQL::MapType = GraphQL::ScalarType.define do
  name "Map"

  coerce -> (value, _ctx) do
    value.respond_to?(:to_h) ? value.to_h : nil
  end
end
