# class CommentsController < ApplicationController

# before_action :comment_owner, only: [:destroy]

# 	def comment_owner
# 		@post = Post.find(params[:post_id])
# 		@comment = @post.comments.find(params[:id])
        
#        unless  @comment.user_id == current_user.id||@post.user_id == current_user.id
#         flash[:notice] = 'Access denied as you are not owner of this comment'
#         redirect_to posts_path
#      end
# 	end
# 	def create

#          @post = Post.find(params[:post_id])
#          @comment = @post.comments.create(params[:comment].permit(:comment))
#          @comment.commentor=current_user.name

#          @comment.user_id = current_user.id
#          @comment.save
#          redirect_to post_path(@post)
# 	end 

# 	 def destroy
#         @post = Post.find(params[:post_id])
#         @comment = @post.comments.find(params[:id])
#         @comment.destroy
#         redirect_to post_path(@post)
#     end
# end
