require 'rails_helper'

RSpec.describe Link, type: :model do
  subject { create(:link)}

  describe "instance methods" do
    it { is_expected.to respond_to(:title) }
    it { is_expected.to respond_to(:original_url) }
    it { is_expected.to respond_to(:vanity_string) }
    it { is_expected.to respond_to(:user_id) }
  end

  describe "link associations" do
    it { should belong_to :user }
  end

# TODO: create homepage controller
  describe "link validations" do
    it { should validate_presence_of(:original_url)}
  end
end
