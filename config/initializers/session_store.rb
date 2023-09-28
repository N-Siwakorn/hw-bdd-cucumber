# Be sure to restart your server when you modify this file.

# Rottenpotatoes::Application.config.session_store :cookie_store, key: '_rottenpotatoes_session'
Rottenpotatoes::Application.config.session_store :active_record_store

Tmdb::Api.key(Rails.application.secrets.tmdbkey)
# Rails.application.config.middleware.use ActionDispatch::Session::CookieStore
# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Rottenpotatoes::Application.config.session_store :active_record_store
