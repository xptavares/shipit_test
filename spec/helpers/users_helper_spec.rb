require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the UsersHelper. For example:
#
# describe UsersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe UsersHelper, type: :helper do
  describe ".min_user_token" do
    let(:user) { User.create name: "xunda" }
    it{ expect(helper.min_user_token(user)).to eq user.token.last(4) }
  end
end
