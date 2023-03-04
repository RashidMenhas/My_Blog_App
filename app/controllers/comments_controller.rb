class CommentsController < ApplicationController
    def new
        @comment = Comment.new
        @post = Post.find(params[:post_id])
    end

    def create
        post =Post.find(params[:id])

        if comment.save
            flash[:success] = 'Comment was successfully saved !'
            redirect_to user_post_url(post.author, post)
        else
            redirect_to new_user_session_url
        end

    end

    def destroy
        user = User.find(params[:user_id])
        post = user.posts.find(params[:post_id])
        comment = Comment.find(params[:id])
        if comment.destroy
            flash[:success] = 'Comment successfully deleted. '
        else
            flash[:error] = 'Error : Comment could not be deleted'
        end
        redirect_to user_post_path(user, post)
    end

    private 

    def comment_params
        params.requir(:comment).permit(:text)
    end
end
