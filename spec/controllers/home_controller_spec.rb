require 'spec_helper'
require 'clearance/testing'

describe HomeController do
  context "a user" do
    before do
      @user = Factory.build(:extended_user)
      sign_in_as(@user)
    end
    describe "get index" do
      it "renders home page after successful login" do
        get :index
        response.should render_template('home/index')
      end
    end
  end

  context "a visitor" do
    before { get :index }
    it     { should deny_access }
  end
end
