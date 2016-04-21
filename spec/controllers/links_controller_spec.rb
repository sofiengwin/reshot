require 'rails_helper'

RSpec.describe LinksController, type: :controller do
  subject { create(:link) }

  describe "GET index" do
    before do
      get :index
    end

    it "should render index template" do
      expect(response).to render_template(:index)
    end

    it "should assign @links" do
      expect(assigns[:links]).to eq(Link.all)
    end
  end

  describe "GET show" do
    before do
      get :show, id: subject
    end

    it "should render show template" do
      expect(response).to render_template(:show)
    end

    it "should assign @link" do
      expect(assigns[:link]).to eq subject
    end
  end

  describe "POST create" do
    it "should increase links count" do

    end

    it "should redirect user to link page" do
      
    end
  end
end
