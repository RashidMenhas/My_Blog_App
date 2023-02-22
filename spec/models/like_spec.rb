require 'rails_helper'

RSpec.describe Like, type: :model do
  before :each do
    @author = User.new(name: 'Sami', photo: 'https://i.pinimg.com/736x/68/d9/01/68d9016028d5ad0cb5ca9f95f40afc9f.jpg',
                       bio: 'Full-Stack Software Developer')
    @post = Post.new(author: @author, title: 'Post for testing', text: 'This post is for testing')

    @like = Like.create(author: @author, post: @post)
  end

  it 'can\'t update likes_counter since its a private method' do
    expect(@like).to_not respond_to(:update_likes_counter)
  end

  it 'will have the Posts likes_counter through update_comments_counter ' do
    expect(@post.likes_counter).to eq 1
  end
end
