# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Puppet::String2confl do
  it 'has a version number' do
    expect(Puppet::String2confl::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(Puppet::String2confl.render_erb(<<~JSON
      {
        "puppet_classes": [],
        "defined_types": [],
        "resource_types": [],
        "providers": [],
        "puppet_functions": []
      }
    JSON
    )).to match(/ac:structured-macro/)
  end
end
