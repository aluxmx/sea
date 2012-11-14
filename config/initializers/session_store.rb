# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_asistencia_session',
  :secret      => 'b2a0b2f4501547ac774539a3930842c558ff859196e1abe18ddae89e109f94d078fac6f04cad60107a729f491bdca6d60dacbedf490c3e796dcd387d36f82a03'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
