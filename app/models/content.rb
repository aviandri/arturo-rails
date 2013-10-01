class Content < ActiveRecord::Base
	
	Types = %w{Photo Video}

	Types.each do |type|
		type_down = type.downcase
		define_method "is_#{type_down}?" do
			self.type == type
		end
	end
end

class Video < Content

end

class Photo < Content
	mount_uploader :asset, PhotoUploader

end
