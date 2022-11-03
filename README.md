# Dotenv-mh

Dotenv-mh is a simple gem inspired on the classic [dotenv](https://github.com/motdotla/dotenv) and adapted to Rails framework following [figaro](https://github.com/laserlemon/figaro) approach for initialization (Rails::Railtie).
Basically, it allows to load environment variables from a .env file when running on development. Once this gem is installed, your Rails application will automatically load your environment variables using a custom Rails::Railtie, so there is no need to modify the "config/application.rb".

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add dotenv-mh

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install dotenv-mh

## Execute Installer
Execute the following:

    $ bundle exec dotenvInstaller  

The installer will create a ".env" file and add it to your .gitignore.

## .env file

This follows the classic .env file structure, where each line represents a tuple of key-value.

    # .env file
    Variable1=value1
    Variable2=value2
    .....
    AnotherVariable=AnotherValue

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/herreramaxi/dotenv-mh.