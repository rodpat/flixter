CarrierWave.configure do |config|
  #config.fog_provider = 'fog/aws'
  config.storage = :aws                         # required
  config.aws_bucket = ENV["AWS_BUCKET"]
  config.aws_acl = "public-read"

  #config.fog_credentials = {
  config.aws_credentials = {
    #provider:              'AWS',                   # required
    access_key_id:     ENV["AWS_ACCESS_KEY"],        # required
    secret_access_key: ENV["AWS_SECRET_KEY"],        # required
    region:            ENV["AWS_REGION"]
  }
  #config.fog_directory  = ENV["AWS_BUCKET"]         # required

  if Rails.env.development?
    config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
    config.root = '/home/vagrant/uploads_tmp/tmp'

  end


end

