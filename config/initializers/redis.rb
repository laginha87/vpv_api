Rails.application.configure do
  config.cache_store = :redis_cache_store, {url: ENV["REDIS_URL"]}
  config.action_controller.perform_caching = true
end
