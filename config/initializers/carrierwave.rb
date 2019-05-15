require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
    config.storage = :fog
    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
    config.fog_provider= 'fog/aws'
    config.fog_credentials = {
        :provider              => 'AWS',
        :aws_access_key_id     => 'AKIAJZDBYG7UX5MBLV5A',
        :aws_secret_access_key => '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',
        :region                => 'eu-north-1'
    }
    config.fog_directory = 'rschool'

end