class CommentsController < ApplicationController
	def create
  		@comment = Comment.new(comment_params)
  		@comment.rant_id = params[:rant_id]
  		@comment.save

  		redirect_to rant_path(@comment.rant)
	end

	def comment_params
  		params.require(:comment).permit(:author, :body)
	end
end
