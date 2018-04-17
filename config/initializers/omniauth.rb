
OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
provider :google_oauth2, '550784583114-8l78sma982adjujfc28gvhvg3qacu4tf.apps.googleusercontent.com', 'gdDoURF67HBZe-c9kYUKLPL7', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end