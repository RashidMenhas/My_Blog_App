class Api::V1::CommentsController < Api::V1::ApplicationController
  before_action :set_post, only: %i[index show create]
  before_action :set_author, only: %i[index show create]
  before_action :set_comment, only: [:show]

  def index
    comments = @post.comments
    render json: comments, status: :ok
  end

  def show
    render json: @comment, status: :ok
  end

  def create
    @comment = author.comments.new(post: @post, **comment_params)
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprosessable_entity
    end
  end

  private

  def set_author
    @author = User.find(params[:post_id])
  end

  def set_post
    @post = set_author.posts.find(params[:post_id])
  end

  def set_comment
    @comment = set_post.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
