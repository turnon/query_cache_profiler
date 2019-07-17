require "query_cache_profiler/version"

module QueryCacheProfiler
  class Railtie < ::Rails::Railtie
    initializer "rack_mini_profiler.query_cache" do |app|
      ::ActiveSupport::Notifications.subscribe('sql.active_record') do |*args|
        opt = args[-1]
        next if opt[:name] != "CACHE"
        duration = 1000.0 * (args[2] - args[1])
        ::Rack::MiniProfiler.record_sql("(CACHE) #{opt[:sql]}", duration)
      end
    end
  end
end
