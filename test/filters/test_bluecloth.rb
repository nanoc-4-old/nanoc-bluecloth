# encoding: utf-8

require 'helper'

class Nanoc::BlueCloth::FilterTest < Minitest::Test

  def test_filter
    # Create filter
    filter = ::Nanoc::BlueCloth::Filter.new

    # Run filter
    result = filter.run("> Quote")
    assert_match %r{<blockquote>\s*<p>Quote</p>\s*</blockquote>}, result
  end

end
