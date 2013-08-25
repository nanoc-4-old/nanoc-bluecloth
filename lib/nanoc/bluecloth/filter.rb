# encoding: utf-8

require 'bluecloth'

module Nanoc::BlueCloth

  class Filter < Nanoc::Filter

    identifier :bluecloth

    def run(content, params={})
      ::BlueCloth.new(content).to_html
    end

  end

end
