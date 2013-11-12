SpreeLatinGeonames
==================

Introduction goes here.

Installation
------------

Add spree_latin_geonames to your Gemfile:

```ruby
gem 'spree_latin_geonames'
```

Add country mexico or brazil:

```shell
bundle exec rake spree_country:mexico
bundle exec rake spree_country:brazil
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_latin_geonames/factories'
```

Copyright (c) 2013 Incaztech S. de R.L., released under the New BSD License
