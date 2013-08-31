[![Build Status](https://travis-ci.org/nanoc/nanoc-uglify_js.png)](https://travis-ci.org/nanoc/nanoc-uglify_js)
[![Code Climate](https://codeclimate.com/github/nanoc/nanoc-uglify_js.png)](https://codeclimate.com/github/nanoc/nanoc-uglify_js)
[![Coverage Status](https://coveralls.io/repos/nanoc/nanoc-uglify_js/badge.png?branch=master)](https://coveralls.io/r/nanoc/nanoc-uglify_js)

# nanoc-uglify_js

This provides an [UglifyJS](https://github.com/mishoo/UglifyJS2/) filter for [nanoc](http://nanoc.ws) using [Uglifier](https://github.com/lautis/uglifier).

## Installation

`gem install nanoc-uglify_js`

## Usage

```ruby
filter :uglifier
```

This method optionally takes options to pass directly to Uglifier.
