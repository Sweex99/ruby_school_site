require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
    config.storage = :fog
    config.root = Rails.root.join('tmp') # adding these...
    config.cache_dir = 'carrierwave' # ...two lines
    config.fog_provider= 'fog/aws'
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAJ6GQRGU2TZE4LQLA',
        :aws_secret_access_key => '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',
        :region                => 'eu-north-1'
    }
    config.fog_directory = 'rschool'

end