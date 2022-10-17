# frozen_string_literal: true

require_relative "mh/version"

module Dotenv
  # module Mh
    # class Dotenv
      def self.load()

        if(!File.file?('.env')) then
          puts ".env file not found"
          return
        end

        puts "loading .env file..."
        
        File.readlines('.env').each do |line|
          puts(line)

          if(line.start_with?("#")) then
            puts("skipping: line comment")
            next
          end
                 
          keyValue = line.strip().split("=", 2)

          if(keyValue.length != 2) then
            puts("skipping: wrong line detected")
            next     
          end

          key = keyValue[0]
          value = keyValue[1]

          ENV[key] = value
        end
      end
    # end
  # end
end
