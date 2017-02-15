require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'



CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog

    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAJZGWTBDTUPP3X5QQ"],      # 你的 key


      aws_secret_access_key: ENV["09/Mk2no2kQOL8adWwcXKE8zwgbwYyUqqDe9hv67"],      # 你的 secret key


      region:                'eu-west-1' # 你的 S3 bucket 的 Region 位置


    }
    config.fog_directory  = ENV["jdstore-lx"] # 你设定的 bucket name



  else
    config.storage :file
  end
end
