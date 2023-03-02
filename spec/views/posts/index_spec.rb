require 'rails_helper'
RSpec.describe 'Post Index', type: :feature do
  before :each do
    @pic = 'https://whatsondisneyplus.com/wp-content/uploads/2022/09/andor-avatar.png'
    @author = User.create(name: 'Momanyi Hassan',
                          photo: @pic,
                          bio: 'I’m a junior software developer! I can help you build a product, feature or website Look through some of my work and experience.')
    @first_post = Post.create(author: @author, title: 'Selam from', text: 'This is my first post')
    @second_post = Post.create(author: @author, title: 'Hello there!',
                               text: 'This is ObiWans\' message: Don\'t let the Empire win')

    @com1 = Comment.create(author: @author, post: @second_post, text: 'Thank you for your support 😊')
    @com2 = Comment.create(author: @author, post: @second_post,
                           text: 'Hello there Cassian, this Dero I am watching you')
    @com3 = Comment.create(author: @author, post: @second_post, text: 'Spend the credits wisely :|')

    visit user_path(@author)

    click_on @author.name
    click_link 'See all posts'
  end

  it 'Shows the username of the user' do
    expect(page).to have_content(@author.name)
  end
  it 'Shows the user photo' do
    expect(page.body).to include(@pic)
  end

  it 'Shows number of posts user has written' do
    expect(page.body).to include('Number of posts: 2')
  end

  it 'Shows number of comments a post has' do
    expect(page.body).to include('Comments: 3')
  end

  it 'Shows number of likes a post has' do
    expect(page.body).to include('Likes: 0')
  end

  it 'Shows the title of the post' do
    expect(page).to have_content(@second_post.title)
  end

  it 'Shows the comments on a post' do
    expect(page).to have_content(@com1.text)
    expect(page).to have_content(@com2.text)
    expect(page).to have_content(@com3.text)
  end

  it 'Redirect to post show page when a post is clicked' do
    click_link @first_post.title
    expect(current_path).to match user_post_path(@author, @first_post)
  end
end
