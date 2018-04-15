#https://bitly.com/a/your_api_key

bitly = YAML.load(File.read(File.expand_path('../../bitly_credentials.yml', __FILE__)))

Bitly.configure do |config|
  config.api_version =bitly[:api_version]
  config.login = bitly[:login]
  config.api_key = bitly[:api_key]
end
