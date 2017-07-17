# Strings2conf

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'strings2conf'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install strings2conf

## Usage

```bash
bundle exec bin/simple_convert path/to/json
```
or something like this: 
```ruby
require 'puppet-strings'
require 'strings2conf'

PuppetStrings.generate(:json => 'path/to/module.json')
Strings2conf.convert(File.read('path/to/module.json'))
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/v0v04ka/strings2conf. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Strings2conf project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/strings2conf/blob/master/CODE_OF_CONDUCT.md).
