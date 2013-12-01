# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
if Rails.env.development? or Rails.env.test?
  Rucamp::Application.config.secret_key_base = 'f1aa56ac32456ca5d40c319ff65a104ed7351257c987d7d945e0b9ec62e4f79184bc02c2499e81870ff600f432f02ee5278be77ea4faf7899c8f5e69bfb10fec'
elsif ENV['APPKEY']
  Rucamp::Application.config.secret_key_base = ENV['APPKEY']
end
