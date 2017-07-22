require 'strings2conf/version'
require 'json'
require 'erb'
include ERB::Util

module Strings2conf
  class Util
    DEFAULT_CODE_BLOCK_PARAMETERS = {
      linenumbers: true,
      theme:       'RDark',
    }.freeze

    def self.code_block(code, params = {})
      ac_params = DEFAULT_CODE_BLOCK_PARAMETERS
        .merge(params)
        .map { |name, value|
          "  <ac:parameter ac:name=\"#{name}\">#{value}</ac:parameter>"
        }
        .join("\n")

      <<~HTML
        <ac:structured-macro ac:name="code">
        #{ac_params}
          <ac:plain-text-body><![CDATA[#{code}]]></ac:plain-text-body>
        </ac:structured-macro>
      HTML
    end
  end

  def self.convert(json)
    @data         = JSON.parse json
    template_path = File.dirname(File.expand_path(__FILE__)) + '/templates/confluence.html.erb'
    ERB.new(File.read(template_path), nil, '-').result(binding)
  end

end
