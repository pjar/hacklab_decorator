module HacklabDecorator
  module LazyHelpers

    def method_missing(name, *args, &block)
      if h.respond_to?(name)
        h.send(name, *args &block)
      else
        super
      end
    end
  end
end
