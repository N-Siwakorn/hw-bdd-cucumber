# Be sure to restart your server when you modify this file.

Rottenpotatoes::Application.config.session_store :cookie_store, key: '_rottenpotatoes_session'

# Rails.application.config.middleware.use OmniAuth::Builder do
#     provider :google_oauth2, '326866279868-0rdud550et3797ecv5guupj4utqahp4r.apps.googleusercontent.com', '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'
#   end
# Rails.application.config.middleware.use ActionDispatch::Session::CookieStore
# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# Rottenpotatoes::Application.config.session_store :active_record_store
