module HacklabDecorator

  module Delegation

      def method_missing(m, *args, &block)
        if object.respond_to?(m)
          object.send(m, *args, &block)
        else
          super
        end
      end
  end
end
