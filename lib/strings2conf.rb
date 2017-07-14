require 'strings2conf/version'
require 'json'
require 'erb'
include ERB::Util

module Strings2conf
  def self.convert(json)
    @data         = JSON.parse json
    template_path = File.dirname(File.expand_path(__FILE__)) + '/templates/confluence.html.erb'
    ERB.new(File.read(template_path), nil, '-').result(binding)
  end
end
