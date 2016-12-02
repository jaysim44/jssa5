class PhotoUploader < CarrierWave::Uploader::Base

  include Cloudinary::CarrierWave

  process :convert => 'png'
  process :tags => ['product_picture']

  version :standard do
    process :resize_to_fill => [300, 350, :north]
  end

  version :thumbnail do
    resize_to_fit(75, 75)
  end

end
