# frozen_string_literal: true

require_relative 'mh/version'
require_relative 'railtie'
require 'dotenv/loggerMh'

module Dotenv
  def self.load
    unless File.file?('.env')
      Dotenv::LoggerMh.logWarning('.env file not found')
      return
    end

    Dotenv::LoggerMh.logInfo('loading variables from .env file...')

    File.readlines('.env').each do |line|
      next if line.start_with?('#')

      keyValue = line.strip.split('=', 2)

      next if keyValue.length != 2

      key = keyValue[0]
      value = keyValue[1]

      ENV[key] = value
    end
  end
end
