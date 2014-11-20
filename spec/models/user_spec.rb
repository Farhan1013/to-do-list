require "rails_helper"

## note that due to the way we included this in our gemfile
#  namely 'require: false', means that we must explicitly include
#  it here
require 'shoulda/matchers'

describe User do

  it { should validate_uniqueness_of(:email) }

      it do
      should allow_value('a@a.com').
                 for(:email)
    end

        it do
      should !allow_value('bob').
                 for(:email)
    end

    it { should ensure_length_of(:password).is_at_least(6) }

    it { should ensure_length_of(:password).is_at_most(20)}

    it { should ensure_length_of(:email).is_at_most(255)}

end

    # it "has an email" do
    #   #now use FactoryGirl to build a user
    #   user = FactoryGirl.create(:a_user)
    #   expect(user.email).to_not be_nil  
    # end

    # it "has a password" do
    #   user = FactoryGirl.create(:a_user)
    #   expect(user.password).to_not be_nil
    # end

    ## our new tests that examine our User model to determine if 
    #  a validation exists requiring the presence of the attribute
    # it { should validate_presence_of(:email) }

    # it { should validate_presence_of(:password) }
# end

