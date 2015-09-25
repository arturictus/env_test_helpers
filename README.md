# EnvTestHelpers

EnvTestHelpers is a collection of helpers to work with environment variables in tests.
Right now is only working with Rspec.

Use case:
- I have configurations set in ignored files, most of this variables are Api keys or passwords.
- The code and tests needs this variables but I can not share them in my VCS.

Solution:
- I mock or set this variables in the test they are required.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'env_test_helpers', group: :test
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install env_test_helpers

## RSpec
 All done. _The module gets included in the rspec configure block._

## Else
Right now only works with RSpec.

## Usage

**Using the variables inside a block:**
```ruby
it 'does something with the FOO environment variable' do
  with_env_vars 'FOO' => 'bar' do
    # logic that depends upon ENV['FOO'] goes here
  end
end
```

**As a before block:**
```ruby
describe Thing do
  before(:all) do
    mock_env_vars('FOO' => 'bar')
  end
  it 'does something with the FOO environment variable' do
    # logic that depends upon ENV['FOO'] goes here
  end
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/env_test_helpers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
