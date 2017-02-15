CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage :fog
    config.fog_credentials = {
      provider:              'AWS',
      aws_access_key_id:     ENV["AKIAJLLTBAY5OTMJO4KA"],      # 你的 key


      aws_secret_access_key: ENV["rfkks0CXDE0cm7U8DFDgHmwXfZbarAHmp5lSiFwO"],      # 你的 secret key


      region:                'Oregon' # 你的 S3 bucket 的 Region 位置


    }
    config.fog_directory  = ENV["jdstore-lx"] # 你设定的 bucket name



  else
    config.storage :file
  end
end
