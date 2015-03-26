require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do


  describe '#index' do
    before :each do
      # This simulates an anonymous user
      login_with nil
      get :index
    end

    it "should be redirected to signup" do
      
      expect( response ).to redirect_to( new_user_registration_path )
    end
  end


end






