class MentorawController < ApplicationController
    def make
       newa = Answer.new
       newa.name = params[:name]
       newa.content = params[:content]
       newa.question_id = params[:id]

       newa.save
       redirect_to "/mentorrq/show/#{params[:id]}"
    end

    def destroy
        @delete = Answer.find(params[:a_id])
        @delete.destroy
        redirect_to "/mentorrq/show/#{@delete.question_id}"

    end
    
    
end
