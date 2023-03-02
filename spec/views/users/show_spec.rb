require 'rails_helper'
RSpec.describe 'User show', type: :feature do
  before :each do
    @pic = 'https://media-exp1.licdn.com/dms/image/D4D03AQH2iqU1XeNMQw/profile-displayphoto-shrink_800_800/0/1664574084004?e=1675900800&v=beta&t=MrQaob8aUgKG7Q_0dw0DSugg0w-CfIGTmCulVDpX4Dg'
    @author = User.create(name: 'Momanyi Hassan',
                          photo: @pic,
                          bio: 'I’m a junior software developer! I can help you build a product, feature or website Look through some of my work and experience.')
    @post1 = Post.create(author: @author, title: 'Full-Stack Software Developer',
                         text: 'Become a full-stack software developer to see bright future')
    @post2 = Post.create(author: @author, title: 'Learn Ruby On Rails',
                         text: 'Learn Ruby On Rails for full-stack software developer')
    @post3 = Post.create(author: @author, title: 'Learn Advance Algorithms',
                         text: 'Learn Advance Algorithms to solve a real world challenges.')
    @post4 = Post.create(author: @author, title: 'Prictace make a man perfect ',
                         text: 'Do more practice if your want to success in your life.')
    visit user_path(@author)
  end
  it 'Shows Author name' do
    expect(page).to have_content(@author.name)
  end
  it 'Shows Author biography' do
    expect(page.body).to have_content(@author.bio)
  end
  it 'Shows the Author photo' do
    image = page.all('img')
    expect(image.size).to eq 1
  end
  it 'Shows number of posts Author has written' do
    expect(page.body).to include('Number of posts: 4')
  end
  it 'Shows the See all posts button' do
    expect(page).to have_content('See all posts')
  end
  it 'Redirects to post show page when the post is clicked' do
    click_link @post4.title
    expect(current_path).to match user_post_path(@author, @post4)
  end
  it 'redirects to show all user posts when the See all posts button is clicked' do
    click_link 'See all posts'
    expect(current_path).to match user_posts_path(@author)
  end
  it 'Check the first three post' do
    expect(page).not_to have_content(@post1.text)
    expect(page).not_to have_content(@post2.text)
    expect(page).not_to have_content(@post3.text)
  end
end
