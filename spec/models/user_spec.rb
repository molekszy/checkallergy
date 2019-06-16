RSpec.describe User, :type => :model do
  before(:all) do
    @user1 = create(:user)
  end

  it "is valid when build from factory" do
    expect(@user1).to be_valid
  end
  it "is valid when build from random facotry" do
    user2 = build(:random_user)
    expect(user2).to be_valid
  end
  it "has a unique email" do
    user2 = build(:user)
    expect(user2).to_not be_valid
  end
  it "is not valid without a password" do
    user2 = build(:random_user, password: nil)
    expect(user2).to_not be_valid
  end
  it "is not valid without an email" do
    user2 = build(:random_user, email: nil)
    expect(user2).to_not be_valid
  end
  it "is not valid when password is shorter than 6" do
    user2 = build(:random_user, password: "ABC")
    expect(user2).to_not be_valid
  end
  it "is not valid when mail is without @" do
    email = "alalala"
    expect(email).not_to match(/^\w+@\w+$/)
    user2 = build(:random_user, email: email)
    expect(user2).to_not be_valid
  end
  it "is not valid when pesel is blank" do
    user2 = build(:random_user, pesel: nil)
    expect(user2).to be_valid
  end
end
