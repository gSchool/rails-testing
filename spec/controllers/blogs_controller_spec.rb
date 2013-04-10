require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BlogsController do

  # This should return the minimal set of attributes required to create a valid
  # Blog. As you add validations to Blog, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "name" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BlogsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all blogs as @blogs" do
      blog = Blog.create! valid_attributes
      get :index, {}, valid_session
      assigns(:blogs).should eq([blog])
    end
  end

  describe "GET show" do
    it "assigns the requested blog as @blog" do
      blog = Blog.create! valid_attributes
      get :show, {:id => blog.to_param}, valid_session
      assigns(:blog).should eq(blog)
    end
  end

  describe "GET new" do
    it "assigns a new blog as @blog" do
      get :new, {}, valid_session
      assigns(:blog).should be_a_new(Blog)
    end
  end

  describe "GET edit" do
    it "assigns the requested blog as @blog" do
      blog = Blog.create! valid_attributes
      get :edit, {:id => blog.to_param}, valid_session
      assigns(:blog).should eq(blog)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Blog" do
        expect {
          post :create, {:blog => valid_attributes}, valid_session
        }.to change(Blog, :count).by(1)
      end

      it "assigns a newly created blog as @blog" do
        post :create, {:blog => valid_attributes}, valid_session
        assigns(:blog).should be_a(Blog)
        assigns(:blog).should be_persisted
      end

      it "redirects to the created blog" do
        post :create, {:blog => valid_attributes}, valid_session
        response.should redirect_to(Blog.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved blog as @blog" do
        # Trigger the behavior that occurs when invalid params are submitted
        Blog.any_instance.stub(:save).and_return(false)
        post :create, {:blog => { "name" => "invalid value" }}, valid_session
        assigns(:blog).should be_a_new(Blog)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Blog.any_instance.stub(:save).and_return(false)
        post :create, {:blog => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested blog" do
        blog = Blog.create! valid_attributes
        # Assuming there are no other blogs in the database, this
        # specifies that the Blog created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Blog.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => blog.to_param, :blog => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested blog as @blog" do
        blog = Blog.create! valid_attributes
        put :update, {:id => blog.to_param, :blog => valid_attributes}, valid_session
        assigns(:blog).should eq(blog)
      end

      it "redirects to the blog" do
        blog = Blog.create! valid_attributes
        put :update, {:id => blog.to_param, :blog => valid_attributes}, valid_session
        response.should redirect_to(blog)
      end
    end

    describe "with invalid params" do
      it "assigns the blog as @blog" do
        blog = Blog.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Blog.any_instance.stub(:save).and_return(false)
        put :update, {:id => blog.to_param, :blog => { "name" => "invalid value" }}, valid_session
        assigns(:blog).should eq(blog)
      end

      it "re-renders the 'edit' template" do
        blog = Blog.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Blog.any_instance.stub(:save).and_return(false)
        put :update, {:id => blog.to_param, :blog => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested blog" do
      blog = Blog.create! valid_attributes
      expect {
        delete :destroy, {:id => blog.to_param}, valid_session
      }.to change(Blog, :count).by(-1)
    end

    it "redirects to the blogs list" do
      blog = Blog.create! valid_attributes
      delete :destroy, {:id => blog.to_param}, valid_session
      response.should redirect_to(blogs_url)
    end
  end

end
