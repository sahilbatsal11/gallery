require 'rails_helper'

RSpec.describe "Albums", type: :request do
  current_user = User.first_create!(first_name: 'Madhvi', last_name: 'Mishra', email: 'madhvimishra338@gmail.com', password: '123456',
  password_confirmation: '123456')

  let(:valid_attributes) do
    {
      'name'=> 'Madhvi','description'=> My name is madhhaci adiusa,'user'=> current_user
    }
  end
  describe "GET /edit" do
    it "render successfully created" do
      album = Album.new(valid_attributes)
      album.user = current_user
      album.save
    end
  end
  describe 'update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        {
          'name'=> 'Madhvi','description'=> My name is madhhaci adiusa,'user'=> current_user
        } 
      end
                             

end
