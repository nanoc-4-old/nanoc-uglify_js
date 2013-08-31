# encoding: utf-8

require 'helper'

class Nanoc::UglifyJS::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::UglifyJS::Filter.new

    # Run filter
    input = "foo = 1; (function(bar) { if (true) alert(bar); })(foo)"
    result = filter.run(input)
    assert_match(/foo=1,function\((.)\)\{alert\(\1\)\}\(foo\);/, result)
  end

  def test_filter_with_options
    filter = ::Nanoc::UglifyJS::Filter.new
    input = "if(donkey) alert('It is a donkey!');"

    result = filter.run(input, :output => { :beautify => false })
    assert_equal 'donkey&&alert("It is a donkey!");', result

    result = filter.run(input, :output => { :beautify => true })
    assert_equal 'donkey && alert("It is a donkey!");', result
  end

end
