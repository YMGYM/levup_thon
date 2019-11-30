class WelcomeController < ApplicationController
    skip_before_action :verify_authenticity_token
    
    def mainpage
        
    end
    
    def mypage
        
    end
	
	def survey 
		unless user_signed_in?
			redirect_to '/users/sign_in'
		end
	end
    
	def surveycreate
    
       survey = Survey.new
        survey.pet_name = params[:dogname]
        survey.pet_size = params[:sociable]
        survey.user_id = current_user.id
        survey.feed_budget = params[:feed_budget]
        if (params[:dryfood] == "on"); survey.dry_feed = true end
        if (params[:cannedfood] == "on"); survey.canned_feed = true end
        if (params[:freeze] == "on"); survey.freeze_dried_snacks = true end
        if (params[:freezetreats] == "on"); survey.freeze_dried_feed = true end
        if (params[:gum] == "on"); survey.chewing_gum = true end
        if (params[:dentalgum] == "on"); survey.tartar_removal_snack = true end
        survey.save
        
        redirect_to "/"
    end
end
