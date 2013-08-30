# motion-env-vars

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'motion-env-vars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-env-vars

## Usage

in you Rakefile

```
Motion::Project::App.setup do |app|
  ...
  app.env_vars = './config/environment.yaml'
  ...
end
```

in config/environment.yaml

```
consumer_key: xxx
consumer_secret: XXX
```

in app code after build, motion-my_env define ENV_VARS constant variable as Hash.

```
p ENV_VARS #=> { 'consumer_key' => 'xxx', 'consumer_secret' => 'XXX' }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
