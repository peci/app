require 'spec_helper'

describe UsersController do
   render_views

  describe "GET 'new'" do

    before(:each) do
      @user = Factory(:user)
    end

    it "should be successful" do
	get :show, :id => @user
#      get 'new'
      response.should be_success
    end

    it "should have the right title" do
  	get :show, :id => @user
     	 assigns(:user).should == @user
#      get 'new'
#      response.should have_selector("title", :content => "Sign up")
    end
    it "should have a profile image" do
      get :show, :id => @user
      response.should have_selector("h1>img", :class => "gravatar")
    end

  end
  


end
