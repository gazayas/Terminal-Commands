# TerminalCommands

A gem for running terminal commands specific to the OS you're working in.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'terminal_commands'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install terminal_commands

## Usage

```Ruby
TerminalCommands.open_file_or_link("https://www.github.com")
TerminalCommands.open_folder("path/to/open")
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/terminal_commands.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
