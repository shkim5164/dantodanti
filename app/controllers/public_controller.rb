class PublicController < ApplicationController
    
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
    end
    
    def show
        @show = params[:id]
        @findone = Blacklist.find(@show)
        @s_name = @findone.name
        @s_major = @findone.major
        @s_number = @findone.number
        @comments = Comment.where(blacklist_id: params[:id])
    end
    
    before_action :log_impression, :only=> [:show]
 
   def log_impression
      @hit_post = Blacklist.find(params[:id])
      # this assumes you have a current_user method in your authentication system
      @hit_post.impressions.create(ip_address: request.remote_ip) #user_id: current_user.id 오류
   end


   def like_toggle
    like = Like.find_by(user_id: current_user.id, post_id: params[:blacklist_id])
    #좋아요가 눌렸는지 체크
    if like.nil?
      Like.create(user_id: current_user.id, post_id: params[:blacklist_id])
    else
      like.destroy
    end
    redirect_to "public/:blacklist_id"
   end
end
