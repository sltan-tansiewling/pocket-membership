# config/initializers/carrierwave.rb

# Reference from: http://blog.thefirehoseproject.com/posts/switching-carrierwave-to-use-s3-with-heroku-and-localhost/
# CarrierWave.configure do |config|
#   config.fog_provider = 'fog/aws'                        # required
#   config.fog_credentials = {
#     provider:              'AWS',                        # required
#     aws_access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
#     aws_secret_access_key: ENV["AWS_SECRET_KEY"],        # required
#   }
#   config.fog_directory  = ENV["AWS_BUCKET"]              # required
# end

# Reference from: https://medium.com/@pk60905/use-carrierwave-to-upload-files-to-s3-81ce79c29b6d
require ‘carrierwave/storage/abstract’
require ‘carrierwave/storage/file’
require ‘carrierwave/storage/fog’

CarrierWave.configure do |config|
  if Rails.env.staging? || Rails.env.production?
    config.fog_provider = ‘fog/aws’
    config.fog_credentials = {
      :provider => ‘AWS’,
      :aws_access_key_id => ENV[‘AWS_ACCESS_KEY_ID’],
      :aws_secret_access_key => ENV[‘AWS_SECRET_ACCESS_KEY’],
      :region => ‘ap-northeast-1’ # Tokyo
    }
    config.fog_directory = ENV[‘S3_BUCKET_NAME’]
    config.storage = :fog
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end