require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :twitter, 'acFdE8XuWvPFXNuevFcnpA', 'otUxtweDVxOrsyuiTsodMweBGzHa6taO6wD4h0zBZJE'
  # provider :facebook, 'APP_ID', 'APP_SECRET'
  # provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'

  # OpenID requires a system store
  # If host doesn't provide that,
  # use memcachedstore, or activerecord store
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end