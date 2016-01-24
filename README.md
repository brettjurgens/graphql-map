# GraphQL::Map

[![Gem Version](https://badge.fury.io/rb/graphql-map.svg)](https://badge.fury.io/rb/graphql-map)

This adds a Map Scalar type to your GraphQL Server

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'graphql-map'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install graphql-map

## Usage

```ruby
require 'graphql/map'
# ...
field :hash do
  type GraphQL::MapType

  resolve -> (obj, args, ctx) { { x: 'foo', y: 'bar'} }
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brettjurgens/graphql-map.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

