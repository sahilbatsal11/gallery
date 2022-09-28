require 'rails_helper'

RSpec.describe 'album feature', type: :feature do
    scenario 'login and enter valid email' do 
    visit '/albums'
    expect(current_path).to eq('/albums')
    end

     
    context 'create new album' do 
        scenario "should be successful" do 
            visit new_album_path
            within('form') do 
            # end
            expect(page).to have_content(' ')
        end
    end

    describe 'viewing the list' do
        it 'lists all the album' do 
            Album.create(name: 'madhvi', description: 'hdhfhu')
            visit albums_url
        end
    end
end


