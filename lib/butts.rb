require 'httparty'
require_relative 'butts/version'

module Butts
  butts_uri = 'butts.so/api/v1'
  header = { 'Content-Type' => 'application/json' }

  def self.get_short_url(url)
    options = { body: {url: url}.to_json }
    options[:headers] = header

    shortcode = HTTParty.post("#{butts_uri}/create", options)

    "http://butts.so/#{shortcode['shortcode']}"
  end
end
