Rails.application.config.middleware.insert_before 0, 'Rack::Cors' do
  allow do
    origins 'localhost:5000'
    resource '*',
             headers: :any,
             methods: %i(get post put patch delete options head)
  end
end
