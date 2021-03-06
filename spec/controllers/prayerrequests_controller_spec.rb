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

describe PrayerrequestsController do

  # This should return the minimal set of attributes required to create a valid
  # Prayerrequest. As you add validations to Prayerrequest, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "title" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PrayerrequestsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all prayerrequests as @prayerrequests" do
      prayerrequest = Prayerrequest.create! valid_attributes
      get :index, {}, valid_session
      assigns(:prayerrequests).should eq([prayerrequest])
    end
  end

  describe "GET show" do
    it "assigns the requested prayerrequest as @prayerrequest" do
      prayerrequest = Prayerrequest.create! valid_attributes
      get :show, {:id => prayerrequest.to_param}, valid_session
      assigns(:prayerrequest).should eq(prayerrequest)
    end
  end

  describe "GET new" do
    it "assigns a new prayerrequest as @prayerrequest" do
      get :new, {}, valid_session
      assigns(:prayerrequest).should be_a_new(Prayerrequest)
    end
  end

  describe "GET edit" do
    it "assigns the requested prayerrequest as @prayerrequest" do
      prayerrequest = Prayerrequest.create! valid_attributes
      get :edit, {:id => prayerrequest.to_param}, valid_session
      assigns(:prayerrequest).should eq(prayerrequest)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Prayerrequest" do
        expect {
          post :create, {:prayerrequest => valid_attributes}, valid_session
        }.to change(Prayerrequest, :count).by(1)
      end

      it "assigns a newly created prayerrequest as @prayerrequest" do
        post :create, {:prayerrequest => valid_attributes}, valid_session
        assigns(:prayerrequest).should be_a(Prayerrequest)
        assigns(:prayerrequest).should be_persisted
      end

      it "redirects to the created prayerrequest" do
        post :create, {:prayerrequest => valid_attributes}, valid_session
        response.should redirect_to(Prayerrequest.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved prayerrequest as @prayerrequest" do
        # Trigger the behavior that occurs when invalid params are submitted
        Prayerrequest.any_instance.stub(:save).and_return(false)
        post :create, {:prayerrequest => { "title" => "invalid value" }}, valid_session
        assigns(:prayerrequest).should be_a_new(Prayerrequest)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Prayerrequest.any_instance.stub(:save).and_return(false)
        post :create, {:prayerrequest => { "title" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested prayerrequest" do
        prayerrequest = Prayerrequest.create! valid_attributes
        # Assuming there are no other prayerrequests in the database, this
        # specifies that the Prayerrequest created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Prayerrequest.any_instance.should_receive(:update).with({ "title" => "MyString" })
        put :update, {:id => prayerrequest.to_param, :prayerrequest => { "title" => "MyString" }}, valid_session
      end

      it "assigns the requested prayerrequest as @prayerrequest" do
        prayerrequest = Prayerrequest.create! valid_attributes
        put :update, {:id => prayerrequest.to_param, :prayerrequest => valid_attributes}, valid_session
        assigns(:prayerrequest).should eq(prayerrequest)
      end

      it "redirects to the prayerrequest" do
        prayerrequest = Prayerrequest.create! valid_attributes
        put :update, {:id => prayerrequest.to_param, :prayerrequest => valid_attributes}, valid_session
        response.should redirect_to(prayerrequest)
      end
    end

    describe "with invalid params" do
      it "assigns the prayerrequest as @prayerrequest" do
        prayerrequest = Prayerrequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Prayerrequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => prayerrequest.to_param, :prayerrequest => { "title" => "invalid value" }}, valid_session
        assigns(:prayerrequest).should eq(prayerrequest)
      end

      it "re-renders the 'edit' template" do
        prayerrequest = Prayerrequest.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Prayerrequest.any_instance.stub(:save).and_return(false)
        put :update, {:id => prayerrequest.to_param, :prayerrequest => { "title" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested prayerrequest" do
      prayerrequest = Prayerrequest.create! valid_attributes
      expect {
        delete :destroy, {:id => prayerrequest.to_param}, valid_session
      }.to change(Prayerrequest, :count).by(-1)
    end

    it "redirects to the prayerrequests list" do
      prayerrequest = Prayerrequest.create! valid_attributes
      delete :destroy, {:id => prayerrequest.to_param}, valid_session
      response.should redirect_to(prayerrequests_url)
    end
  end

end
