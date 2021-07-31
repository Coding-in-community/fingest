# frozen_string_literal: true

require 'factory_bot_rails'

# factorybot
class MyEngine < ::Rails::Engine
  if defined?(FactoryBotRails)
    config.factory_bot.definition_file_paths +=
      [File.expand_path('factories', __dir__)]
  end
end
