class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.save
		redirect_to comment_path(@comment.id)
	end

	def destroy
		@comment = Comment.find(params[:id])
		@commment.destroy
		redirect_to comment_path
	end

end
