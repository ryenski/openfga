require 'logger'
module OpenFGA
  class Configuration
    DEFAULT_ENDPOINT = "http://localhost:8080"
    
    attr_accessor :endpoint
    attr_reader :logger

    def initialize(options = {})
      @logger = defined?(Rails) ? Rails.logger : Logger.new(STDOUT)
      @endpoint = DEFAULT_ENDPOINT

      yield(self) if block_given?
    end

    def load(options = {})
      options.each { |key, value| send("#{key}=", value) if self.respond_to?("#{key}=") && !value.nil? }
    end
  end
end

