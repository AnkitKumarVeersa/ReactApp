module Api
	module V1
		class CommentsController < ApplicationController
            def show_comments
                @comments = Comment.where(inventory_id: params[:inventory_id], parent_id: nil)
                @comments
            end
            def create_comments
                comment=Comment.new(user_id: comment_params[:user_id], inventory_id: comment_params[:inventory_id], comment: comment_params[:comment], parent_id: comment_params[:parent_id], username: User.find(comment_params[:user_id]).username)
                if(comment.save)
                    render json: {success: 1, message: 'Comment Saved'}, status: :ok
                else
                    render json: {success: 0, message: 'An error occured! Failed to save comment'}
                end
            end
            def delete_comments
                if(Comment.find(params[:id]).destroy)
                    render json: {success: 1, message: 'Comment Deleted'}, status: :ok
                else 
                    render json: {success: 0, message: 'An error occures! Failed to delete comment'}
                end
            end
            def update_comments
                com = Comment.find(params[:id])
                if(com)
                    com.comment = comment_params[:comment]
                else
                    render json: {success: 0, message: 'An unexpected error occured!'}
                    return
                end
                if(com.save)
                    render json: {success: 1, message: 'Comment Updated'}, status: :ok
                else
                    render json: {success: 0, message: 'An unexpected error occured'}
                end
            end

            private

			def comment_params
			   params.permit(:user_id, :inventory_id, :comment, :parent_id)
			end
        end
    end
end


# '2': {content: 'static comment 1', author_id: 2, author: 'User 2', contentId : '2'},
