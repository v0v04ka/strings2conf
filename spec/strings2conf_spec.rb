require 'spec_helper'

RSpec.describe Strings2conf do
  it 'has a version number' do
    expect(Strings2conf::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(Strings2conf.convert(<<~JSON
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
