require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    let (:user) { User.new }
    describe "name is blanck" do
      it { expect(user).to be_invalid  }
    end

    describe "name is not blanck" do
      let (:user) { User.new(name: "xunda") }
      it { expect(user).to be_valid  }
    end
  end
  describe "initialize_fields" do
    let (:user) { User.create name: "xunda" }
    it { expect(user.token).not_to be_empty }
  end
end
