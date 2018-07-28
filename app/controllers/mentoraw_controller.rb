class MentorawController < ApplicationController
    def make
       newa = Answer.new
       newa.name = params[:name]
       newa.content = params[:content]
       newa.question_id = params[:id]

       newa.save
       redirect_to "/mentorrq/show/#{params[:id]}"
    # 루비문서내에서 스트링 안에 루비문으로 인식하고싶을ㄸㅐ ? 
    end

    def destroy
        @delete = Answer.find(params[:a_id])
        @delete.destroy
        redirect_to "/mentorrq/show/#{@delete.question_id}"

    end
    
    
end
