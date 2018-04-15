class Post2 < ActiveRecord::Base
    mount_uploader :image, ImageUploader
end
