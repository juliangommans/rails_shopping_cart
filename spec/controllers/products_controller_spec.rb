require 'rails_helper'

RSpec.describe ProductsController, :type => :controller do

  login_user

  describe '#index' do

    it "if no user is signed in it redirects to sign-up" do
      sign_out :user
      get :index
      expect(response).to redirect_to(new_user_registration_path)
    end

    before do
      get :index
    end

    it 'returns an http status 200' do
      expect(response).to have_http_status(200)
    end

    it 'renders an index page' do
      expect(response).to render_template('index')
    end

    it 'loads all products' do
      product1, product2 = Product.create, Product.create
      get :index
      expect(assigns(:products)).to match_array([product1, product2])
    end

  end

  describe '#new' do

    before do
      get :new
    end

    it 'returns an http status 200' do
      expect(response).to have_http_status(200)
    end

    it 'renders an new page' do
      expect(response).to render_template('new')
    end

    let(:product_double) { double("product_double")}
    
    it 'creates a new product' do
      @product = FactoryGirl.create(:product)
      expect(assigns(:product)).to be_a_new(Product)
    end


  end

  describe '#show' do

    before do
      get :show
    end

    it 'returns an http status 200' do
      expect(response).to have_http_status(200)
    end

    it 'renders an show page' do
      expect(response).to render_template('show')
    end


  end

end
