module HacklabDecorator

  class Railtie < Rails::Railtie
    initializer "hacklab_decorator.setup_orm" do |app|
      ActiveSupport.on_load :active_record do
        HacklabDecorator.setup_orm self
      end
    end
  end

end