module Dotenv
    class LoggerMh
        def self.logInfo(message)
        log('INFO', message)
        end

        def self.logError(message)
        log('ERROR', message)
        end

        def self.logWarning(message)
        log('WARNING', message)
        end

        def self.log(messageType, message)
        puts "dotenv-mh | #{messageType} | #{Time.now.strftime('%d-%m-%Y %H-%M-%S.%L')} | #{message}"
        end
    end
end
