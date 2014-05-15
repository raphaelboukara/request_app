# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
RequestApp::Application.config.secret_key_base = '06e2bf98f6baaf1b5bd52594dc9d0f29016ff485e5ab7820ac1f821852a1943dcfaa29b1be6aac9d1211a56ec478688857b32b1eed1fd146101cb8ef817347ad'
