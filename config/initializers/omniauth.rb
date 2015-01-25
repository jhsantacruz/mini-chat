Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.facebook_key, Rails.application.secrets.twitter_secret,
           scope: 'public_profile', display: 'page', image_size: 'square'

  provider :twitter, Rails.application.secrets.twitter_key, Rails.application.secrets.twitter_secret, image_size: 'normal'
end