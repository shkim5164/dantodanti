class CommentController < ApplicationController
    before_action :authenticate_user!
  def create
    @newa = Comment.new
    @newa.content = params[:content]
    @newa.blacklist_id = params[:blacklist_id]
    @newa.save
    
    redirect_to "/public/show/#{params[:blacklist_id]}"
  end
  
  def destory
    comment=Comment.find params[:id]
    comment.destroy
    redirect_to "/public/show/#{comment.blacklist_id}"
  end

end
