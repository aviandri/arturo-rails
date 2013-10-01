ActiveAdmin.register Content do
	form :partial => "form"          

	index do
		column :id
		column "asset" do |content|
			if content.type == "Photo"
      			image_tag(content.asset.thumb.url)
      		elsif content.type == "Video"
      			"#{content.asset}"
      		end
      	end
      	column :created_at
      	column :updated_at
      	default_actions                   
  	end 

	controller do
	    def permitted_params
	      params.permit(:content => [:type, :asset])
	    end
	 end
end
