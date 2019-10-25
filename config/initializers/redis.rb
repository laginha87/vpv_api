Rails.application.config.cache_store = :redis_cache_store, { url: ENV['REDIS_URL'] }
Rails.config.action_controller.perform_caching = true
