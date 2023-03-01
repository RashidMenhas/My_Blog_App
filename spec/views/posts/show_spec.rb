require 'rails_helper'
RSpec.describe 'Post Show', type: :feature do
  before :each do
    @pic = 'https://media-exp1.licdn.com/dms/image/D4D03AQH2iqU1XeNMQw/profile-displayphoto-shrink_800_800/0/1664574084004?e=1675900800&v=beta&t=MrQaob8aUgKG7Q_0dw0DSugg0w-CfIGTmCulVDpX4Dg'
    @author = User.create(name: 'Momanyi Hassan',
                          photo: @pic,
                          bio: 'I’m a junior software developer! I can help you build a product, feature or website Look through some of my work and experience.')
    @post = Post.create(author: @author, title: 'Hello!',
                        text: 'This is Momanyi Hassan message: Don\'t let the Empire win')

    @com1 = Comment.create(author: @author, post: @post, text: 'Thanks for your support 😊')
    @com2 = Comment.create(author: @author, post: @post,
                           text: 'Hello there Momanyi Hassan, this Dero I am watching you')
    @com3 = Comment.create(author: @author, post: @post, text: 'Spend the credits wisely :|')

    @like1 = @post.likes.create!(author: @author)

    visit user_post_path(@author, @post)
  end

  it 'Shows the username of the author' do
    expect(page).to have_content(@author.name)
  end

  it 'Shows number of comments the post has' do
    expect(page.body).to include('Comments: 3')
  end

  it 'Shows number of likes a post has' do
    expect(page.body).to include('Likes: 1')
  end

  it 'Shows the title of the post' do
    expect(page).to have_content(@post.title)
  end

  it 'Shows part of a post body' do
    expect(page).to have_content(@post.text)
  end

  it 'Shows the comments on the post' do
    expect(page).to have_content(@com1.text)
    expect(page).to have_content(@com2.text)
    expect(page).to have_content(@com3.text)
  end

  it 'Shows the user name of a comment' do
    expect(page).to have_content(@com1.author.name)
    expect(page).to have_content(@com2.author.name)
    expect(page).to have_content(@com3.author.name)
  end
end
