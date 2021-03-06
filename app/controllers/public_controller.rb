class PublicController < ApplicationController
    layout :admin_layout, :only => [:execution, :show]
    before_action :authenticate_user!
    def write
        @token=form_authenticity_token
    end
    
    def create
        @newrecord=Blacklist.new
        @newrecord.name=params[:name] 
        @newrecord.major=params[:major]
        @newrecord.number=params[:number] 
        @newrecord.save
        redirect_to "/public/index"
    end
    
    def index
        @allrecord = Blacklist.all
        render :layout => 'execution'
    end
    
    def show
        @show = params[:id]
        @findone = Blacklist.find(@show)
        @s_name = @findone.name
        @s_major = @findone.major
        @s_number = @findone.number
        @comments = Comment.where(blacklist_id: params[:id])
        render :layout => 'show'
    end
    
    before_action :log_impression, :only=> [:show]
 
   def log_impression
      @hit_post = Blacklist.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @hit_post.impressions.create(ip_address: request.remote_ip, user_id: current_user.id) # 오류
   end

    def rank
        @show = params[:id]
        @mentor = Mentor.find(@show)
        @mentor_id = @mentor.user_id
        @mentor_email = @mentor.user.email
        @mentor_name = @mentor.user.username
        @mentor_age = @mentor.user.userage
        @mentor_department = @mentor.user.userdepartment
        @mentor_number = @mentor.user.usernumber
        
        
        
        
    end
    
end
