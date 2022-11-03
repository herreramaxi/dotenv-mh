# frozen_string_literal: true

require_relative "mh/version"
require_relative "railtie"
require_relative "LoggerMh"

module Dotenv
      def self.load()

        if(!File.file?('.env')) then
          LoggerMh.logWarning(".env file not found")
          return
        end

        LoggerMh.logInfo("loading variables from .env file...")
        
        File.readlines('.env').each do |line|        
          if(line.start_with?("#")) then           
            next
          end
                 
          keyValue = line.strip().split("=", 2)

          if(keyValue.length != 2) then
            next     
          end

          key = keyValue[0]
          value = keyValue[1]

          ENV[key] = value
        end
      end
end
