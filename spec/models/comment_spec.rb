require 'rails_helper'

RSpec.describe Comment, type: :model do
  before :each do
    @author = User.new(name: 'Sami', photo: 'https://i.pinimg.com/736x/68/d9/01/68d9016028d5ad0cb5ca9f95f40afc9f.jpg',
                       bio: 'Full-Stack Software Developer')
    @post = Post.new(author: @author, title: 'Post for testing', text: 'This post is for test')

    @comment1 = Comment.create(author: @author, post: @post, text: 'Test comment')
    @comment2 = Comment.create(author: @author, post: @post, text: 'Test comment')
  end

  it 'can\'t update comments_counter when its a private method' do
    expect(@comment1).to_not respond_to(:update_comments_counter)
    expect(@comment2).to_not respond_to(:update_comments_counter)
  end

  it 'will have the Posts comments_counter through update_comments_counter ' do
    expect(@post.comments_counter).to eq 2
  end
end
