# OpenFGA

This is a Ruby client for the OpenFGA API.

OpenFGA is a scalable open source authorization system for developers that allows implementing authorization for any kind of application and smoothly evolve as complexity increases over time.

More information about OpenFGA can be found at [https://openfga.dev](https://openfga.dev).

## Installation

Install the gem and add to the application's Gemfile by executing:

```sh
bundle add openfga
```

If bundler is not being used to manage dependencies, install the gem by executing:

```sh
gem install openfga
```

## Usage

```rb
require 'openfga'

openfga = OpenFGA::Client.new(endpoint: 'http://localhost:8180')
```

### Create a store

```rb
openfga.store.create(name: 'store1', description: 'store1 description')
```

## Configuration

```rb
OpenFGA.configure do |config|
  config.endpoint = 'http://localhost:8180'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/OpenFGA.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
