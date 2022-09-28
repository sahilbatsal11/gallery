require 'rails_helper'
describe 'the signup process', type: :feature do
  before :each do
    User.create(email: 'madhvimishra338@gmail.com', password: '123456')
  end

  it 'signs @user in' do
    visit '/users/sign_in'
    fill_in 'Email', with: 'khushi123@gmail.com'
    fill_in 'Password', with: '123456'
    click_button 'Log in'
    
    expect(current_path).to eq(root_path)
    #expect(page).to have_text('Signed in successfully.')
  end
end