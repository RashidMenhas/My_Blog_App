class LikesController < ApplicationController
def create 
    post = Post.find(params[:post_id])
    like = Like.create(author:current_user, post:)

    if like.save
        flash[:success] = 'Post was liked '
    else
        redirect_to user_post_url(current_user.id, post.id)
    end
        
end

end
