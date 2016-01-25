if Rails.env.production? or Rails.env.staging?
  uri = URI.parse(ENV["REDISTOGO_URL"] || "redis://redistogo:d20c6495175fc93f8b6d7955e4f47c63@viperfish.redistogo.com:9540/" )
  Resque.redis = Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end
