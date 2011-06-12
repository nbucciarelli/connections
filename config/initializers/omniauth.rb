require 'openid/store/filesystem'
Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :twitter, 'ZbACGUzYk96vv6wDKC4g', 'TQKF7vovp85QQFArtUISDXxq5A9eXCxbYvDcIUv6k4'
  # provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :facebook, '151213111614465', 'fcd24f1304bb945ebe36671d7cf5a0fa'

  # provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'

  # OpenID requires a system store
  # If host doesn't provide that,
  # use memcachedstore, or activerecord store
  provider :open_id, OpenID::Store::Filesystem.new('/tmp')
end