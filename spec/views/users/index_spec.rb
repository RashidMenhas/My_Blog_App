require 'rails_helper'
RSpec.describe 'User index', type: :feature do
  before :each do
    @pic = 'https://media-exp1.licdn.com/dms/image/D4D03AQH2iqU1XeNMQw/profile-displayphoto-shrink_800_800/0/1664574084004?e=1675900800&v=beta&t=MrQaob8aUgKG7Q_0dw0DSugg0w-CfIGTmCulVDpX4Dg'
    @author = User.create(name: 'Momanyi Hassan',
                          photo: @pic,
                          bio: 'I’m a junior software developer! I can help you build a product, feature or website Look through some of my work and experience.')
    visit users_path
  end
  it 'Shows Author name' do
    expect(page).to have_content(@author.name)
  end
  it 'Shows the Author photo' do
    image = page.all('img')
    expect(image.size).to eq 1
  end
  it 'Shows number of posts Author has written' do
    expect(page.body).to include('Number of posts: 0')
  end
  it 'Redirects to user show page when a user is clicked' do
    click_link @author.name
    expect(current_path).to match user_path(@author)
  end
  it 'Shows create post button' do
    expect(page).to have_content('create post')
  end
  it 'Redirects to post new page when a create post button is clicked' do
    click_link 'create post'
    expect(current_path).to match create_post_path
  end
end
