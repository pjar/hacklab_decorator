module HacklabDecorator

  module Decoratable

    def decorate(options = {})
      klass = options.fetch(:with) do
        "#{self.class.name}Decorator".constantize
      end
      klass.new
    end

  end

end