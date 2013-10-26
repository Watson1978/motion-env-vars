# motion-env-vars

Set ENV_VARS hash which is available in RubyMotion app.

You can set variables from yaml file or hash in Rakefile.

## Installation

Add this line to your application's Gemfile:

    gem 'motion-env-vars'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-env-vars

## Usage

in you Rakefile

#### From yaml file

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

in app code after build, motion-env-vars define ENV_VARS constant variable as Hash.

```
p ENV_VARS #=> { 'consumer_key' => 'xxx', 'consumer_secret' => 'XXX' }
```

#### From hash

```
Motion::Project::App.setup do |app|
  ...
  app.env_vars = { 'consumer_key' => 'xxx', 'consumer_secret' => 'XXX' }
  ...
end
```

You can also use shell ENV

```
  app.env_vars = ENV.to_hash
```

Or selectively

```
  app.env_vars = { 'CUSTOMER_KEY' => ENV['CUSTOMER_KEY'], 'CUSTOMER_SECRET' => ENV['CUSTOMER_SECRET'] }
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
