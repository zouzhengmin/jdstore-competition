require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAJS2FV2ZLJADAHDJQ"],      # 你的 key


      aws_secret_access_key: ENV["/wp+XQ81x2BFiuROj++kYYslUBHA+t+ysBi53B65"],      # 你的 secret key


      region:                'ap-northeast-2' # 你的 S3 bucket 的 Region 位置


    }
    config.storage :fog
    config.fog_directory  = ENV["jdstore-lx"] # 你设定的 bucket name



  else
    config.storage :file
  end
end
