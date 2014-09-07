class HacklabDecorator::Decorator

  attr_reader :object

  def self.delegate_all
    define_method :method_missing do |m, *args, &block|
      return super(m, *args, &block) unless object.respond_to?(m)
      object.send(m, *args, &block)
    end
    #include Delagation

  end

  def initialize(object_to_decorate)
    @object = object_to_decorate
  end

  def h
    RequestStore[:current_controller].view_context
  end




end
