require "puppet/string2confl/version"
require 'erb'
require 'json'


module Puppet
  module String2confl
    class ErbPassVal_
      def initialize(json)
        @data = JSON.parse json
      end
    end
    my_path = (File.dirname(File.expand_path(__FILE__)))
    DEFAULT_ERB = File.read(my_path + '/string2confl/reference.html.erb')
    def self.render_erb(json, erb=String2confl::DEFAULT_ERB)
      erb = ERB.new(erb,0,'-')
      print erb.def_class(Puppet::String2confl::ErbPassVal_, 'render()').new(json).render()

    end
  end
end
