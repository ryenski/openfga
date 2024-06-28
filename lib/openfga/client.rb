module OpenFGA
  class Client

    attr_accessor :config

    def initialize(options = {}, &block)
      configuration.load(options)
      yield(configuration) if block_given?
    end

    def configuration
      @configuration ||= Configuration.new
    end

    def logger
      config.logger
    end
  end
end
