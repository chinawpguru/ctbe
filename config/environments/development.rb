Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.delivery_method = :letter_opener

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end

CHAMPTRACKER_CONFIG = {
  facebook: {
    key: '611735282264947',
    secret: 'a6065d000ca3e8758d749aa8ac654bf2',
    callback_url: 'http://localhost:3000/oauth/callback?provider=facebook',
    user_info_mapping: {email: 'email', first_name: 'first_name', last_name: 'last_name'},
    user_info_path: 'me?fields=id,name,email,first_name,last_name',
    access_permissions: %w[email publish_stream]
  },

  twitter: {
    key: 'jOryFHiX4lipetjkJtpMgtmop',
    secret: 'qU52P26JS9lv7P44DKLM5aFYRs8QQ3G0heWa0IrPXhfqVvChSZ',
    callback_url: 'http://localhost:3000/oauth/callback?provider=twitter',
    user_info_mapping: {email: 'screen_name'}
  },

  google: {
    key: '530470825136-bpq4rm73atas3l4gjbo1ltf93kfh0d94.apps.googleusercontent.com',
    secret: '3Q22_l06EQ9xrJFqjh-NXus_',
    callback_url: 'http://127.0.0.1:3000/oauth/callback?provider=google',
    user_info_mapping: {email: 'email'}
  },

  mailer: {
      from: 'hello@greenshoresdigital.com'
  }
}
