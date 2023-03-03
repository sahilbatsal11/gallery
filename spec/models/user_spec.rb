require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a firstname,lastname and email" do
    user = User.new 
    (
      email: 'madhvimishra338@gmail.com',
      password: '123456'
    )
    expect(user).to be_valid
  end

  it "is invalid without an email" do
    user = User.new
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  
  it "returns a user email as a string" do
    user = User.new(email: 'khushi123@gmail.com')
    expect(user)
  end

  it "is invalid with duplicate email address" do
    User.create
    (
      email: 'arnavmadhvi12@gmail.com'
    )
    user = User.new
    (
      email: 'khushi123@gmail.com'
    )
    user.valid?
    expect(user.errors[:email])
  end

  it "should have many albums" do
    t = User.reflect_on_association(:albums)
    expect(t.macro).to eq(:has_many)
  end
end
