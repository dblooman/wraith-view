# Wraith::View

This will auto generate pages to view Wraith galleries, when they were created and enable a user to run a job.

## Installation

Add this line to your application's Gemfile:

    gem 'wraithview'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wraithview

## Usage

Use CLI for start and stop commands.  Wraithview will start a Sinatra app using Thin on port 3000.

```
wraithview start           # Starts Wraith view service
wraithview stop            # Stops Wraith view service
```

### Options

To use another port, pass it options

`
wraithview start -p 9000

## Contributing

1. Fork it ( http://github.com/DaveBlooman/wraithview/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
