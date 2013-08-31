# encoding: utf-8

require 'uglifier'

module Nanoc::UglifyJS

  class Filter < Nanoc::Filter

    identifier :uglifier

    def run(content, params={})
      ::Uglifier.new(params).compile(content)
    end

  end

end
