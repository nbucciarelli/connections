Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :twitter, 'acFdE8XuWvPFXNuevFcnpA', 'otUxtweDVxOrsyuiTsodMweBGzHa6taO6wD4h0zBZJE'
  # provider :facebook, 'APP_ID', 'APP_SECRET'
  # provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end