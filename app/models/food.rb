class Food < ApplicationRecord
	has_many :reviews
    
    mount_uploader :avatars, AvatarUploader
    attr_accessor :remote_avatars_url
end
