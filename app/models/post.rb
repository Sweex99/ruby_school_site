class Post < ApplicationRecord
  mount_uploader :logo, PostLogoUploader

end
