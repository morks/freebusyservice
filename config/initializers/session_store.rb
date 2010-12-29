# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_freebusyservice_session',
  :secret      => '9c04501f39d0c4c427395534f874b1b15d5322797644fd1aa49d851d383c0a99c553ec55da4aceeb9f06938e440015239ee244d1dce27b6f291fb6c9f1e7a396'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
