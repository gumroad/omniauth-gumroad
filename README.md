# OmniAuth Gumroad

[![Build Status](https://travis-ci.org/gumroad/omniauth-gumroad.png?branch=master)](https://travis-ci.org/maxwellE/omniauth-gumroad)
[![Gem Version](https://badge.fury.io/rb/omniauth-gumroad.png)](http://badge.fury.io/rb/omniauth-gumroad)

This is the official OmniAuth strategy for authenticating to Gumroad.  To use it, you'll need to sign up for an OAuth Application ID and Application Secret on the [Gumroad Applications Page](https://gumroad.com/settings/advanced).

## Basic Usage

Add to Gemfile:

```ruby
gem 'omniauth-gumroad'
```

Now are you are ready to use!

```ruby
use OmniAuth::Builder do
  provider :gumroad, ENV['GUMROAD_APPLICATION_ID'], ENV['GUMROAD_APP_SECRET']
end
```

## Scopes

The Gumroad API lets you set scopes to provide varying levels of access to different types of data.

```ruby
use OmniAuth::Builder do
  provider :gumroad, ENV['GUMROAD_APPLICATION_ID'], ENV['GUMROAD_APP_SECRET'], scope: 'edit_products view_sales'
end
```

Learn more about [Scopes](https://gumroad.com/api#api-scopes).

## License

The MIT License (MIT)

Copyright (c) 2014 Maxwell Elliott

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
