Devise.setup do |config|

  config.secret_key = 'c268f726be24ad2aea90178b2220938b77dcc9f93d74d927d3d52476701cb121f249b6423c9c0d71938567f1de158a0c9e7964d71ac04246668892c24e19989e'


  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'


  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 11
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete
  config.authentication_keys = [ :login ]
  config.reset_password_keys = [ :username ]
  config.confirmation_keys = [ :username ]
end
