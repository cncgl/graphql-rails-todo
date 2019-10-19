Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # クライアントのドメインを指定
    origins 'localhost:8001'
    resource '*',
             headers: :any,
             methods: [:get, :post, :put, :patch, :delete, :options, :head],
             credentials: true
  end
end
