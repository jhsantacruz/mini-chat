Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET'],
  #          scope: 'public_profile', display: 'page', image_size: 'square'

  provider :twitter, Rails.application.secrets.twitter_key, Rails.application.secrets.twitter_secret, image_size: 'normal'
end