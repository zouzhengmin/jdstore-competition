# CarrierWave.configure do |config|
#   if Rails.env.production?
#     config.fog_credentials = {
#       provider:              'AWS',
#       aws_access_key_id:     ENV["aws_access_key_id"],      # 你的 key
#
#
#       aws_secret_access_key: ENV["aws_secret_access_key"],      # 你的 secret key
#
#
#       region:                'eu-west-1' # 你的 S3 bucket 的 Region 位置
#
#
#     }
#     config.storage :fog
#     config.fog_directory  = ENV["AWS_BUCKET_NAME"] # 你设定的 bucket name
#
#
#
#   else
#     config.storage :file
#   end
# end
CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:               'AWS',                        # required
    aws_access_key_id:      ENV['AWS_ACCESS_KEY_ID'],     # required
    aws_secret_access_key:  ENV['AWS_SECRET_ACCESS_KEY'], # required
    region:                 ENV['AWS_REGION'],            # optional, defaults to 'us-east-1'

  }
  config.fog_directory  = 'discoveredfmyelpdemo'                          # required
  config.fog_public     = false                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end
