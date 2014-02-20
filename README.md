# TestOfficer

[![Build Status](https://secure.travis-ci.org/danbickford007/test_officer.png)](http://travis-ci.org/danbickford007/test_officer?branch=master)

This gem will run your specs for you automatically by watching the project for creates, saves and deletes.  
Upon such action, either the saved file is run against rspec or the project is searched for the specified
spec file.  For example, the file user.rb was edited, the file user_spec.rb will then be run.  If no file
can be found to run against, the full test suite will be run.

Note:  Please ensure all specs are within your spec directory at the root of the project

## Installation

Add this line to your application's Gemfile:

    gem 'test_officer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install test_officer

## Usage

in terminal

    $ test_officer

  or

    $ patrol

## Contributing!

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
