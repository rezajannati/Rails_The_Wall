class CommentsController < ApplicationController
  def new
  end

  def create
  	@newcom = Comment.new(comment_params)
  	if @newcom.save
  	redirect_to(users_path)
  	end
  end

  def destroy
  end
  
  private def comment_params
	params.require(:comment).permit(:comment, :message_id, :user_id)
  end
end
