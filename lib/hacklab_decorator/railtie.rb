module HacklabDecorator

  class Railtie < Rails::Railtie
    config.after_initialize do |app|
      app.config.paths.add 'app/decorators', eager_load: true
    end

    initializer "hacklab_decorator.setup_orm" do |app|
      ActiveSupport.on_load :active_record do
        HacklabDecorator.setup_orm self
      end
    end

    initializer 'hacklab_decorator.setup_action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        HacklabDecorator.setup_action_controller self
      end
    end


  end

end