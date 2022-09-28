require 'rails_helper'

RSpec.describe Album, type: :model do
  it "it is not valid without name" do
    album = Album.new(name: nil)
    expect(album).to_not be_valid
  end

  it "it is not valid without description" do
    album = Album.new(description: nil)
    expect(album).to_not be_valid
  end

  describe Album do
    describe "Associations" do 
       it "belongs_to user" do
        assc = described_class.reflect_on_association(:user)
         expect(assc.macro).to eq :belongs_to
       end

  # describe "Association" do
  #   it {should belongs_to(:user)}
  #   #  it {should has_many(:photos)}
  # end

  # it "should belong to a user"
  #   t = Album.reflect_on_association(:user)
  #   expect(t.macro).to eq(:belongs_to)
  # end

    # it "should have many photos" do
    #   t = User.reflect_on_association(:photos)
    #   expect(t.macro).to eq(:has_many)
    # end
end
