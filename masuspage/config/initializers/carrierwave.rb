if Rails.env.test? || Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :attachment
    config.enable_processing = false
  end


  FileUpload


  CarrierWave::Uploader::Base.descendants.each do |klass|
    next if klass.anonymous?
    klass.class_eval do
      storage :attachment
      def cache_dir
        "#{Rails.root}/spec/support/uploads/tmp"
      end

      def store_dir
        "#{Rails.root}/spec/support/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
      end
    end
  end
end
