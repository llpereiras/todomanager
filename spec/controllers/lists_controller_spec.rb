require 'rails_helper'

RSpec.describe ListsController, :type => :controller do

    let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all lists as @lists" do
      list = List.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:lists)).to eq([list])
    end
  end

  describe "GET show" do
    it "assigns the requested list as @list" do
      list = List.create! valid_attributes
      get :show, {:id => list.to_param}, valid_session
      expect(assigns(:list)).to eq(list)
    end
  end

  describe "GET new" do
    it "assigns a new list as @list" do
      get :new, {}, valid_session
      expect(assigns(:list)).to be_a_new(List)
    end
  end

  describe "GET edit" do
    it "assigns the requested list as @list" do
      list = List.create! valid_attributes
      get :edit, {:id => list.to_param}, valid_session
      expect(assigns(:list)).to eq(list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new List" do
        expect {
          post :create, {:list => valid_attributes}, valid_session
        }.to change(List, :count).by(1)
      end

      it "assigns a newly created list as @list" do
        post :create, {:list => valid_attributes}, valid_session
        expect(assigns(:list)).to be_a(List)
        expect(assigns(:list)).to be_persisted
      end

      it "redirects to the created list" do
        post :create, {:list => valid_attributes}, valid_session
        expect(response).to redirect_to(List.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved list as @list" do
        post :create, {:list => invalid_attributes}, valid_session
        expect(assigns(:list)).to be_a_new(List)
      end

      it "re-renders the 'new' template" do
        post :create, {:list => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested list" do
        list = List.create! valid_attributes
        put :update, {:id => list.to_param, :list => new_attributes}, valid_session
        list.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested list as @list" do
        list = List.create! valid_attributes
        put :update, {:id => list.to_param, :list => valid_attributes}, valid_session
        expect(assigns(:list)).to eq(list)
      end

      it "redirects to the list" do
        list = List.create! valid_attributes
        put :update, {:id => list.to_param, :list => valid_attributes}, valid_session
        expect(response).to redirect_to(list)
      end
    end

    describe "with invalid params" do
      it "assigns the list as @list" do
        list = List.create! valid_attributes
        put :update, {:id => list.to_param, :list => invalid_attributes}, valid_session
        expect(assigns(:list)).to eq(list)
      end

      it "re-renders the 'edit' template" do
        list = List.create! valid_attributes
        put :update, {:id => list.to_param, :list => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested list" do
      list = List.create! valid_attributes
      expect {
        delete :destroy, {:id => list.to_param}, valid_session
      }.to change(List, :count).by(-1)
    end

    it "redirects to the lists list" do
      list = List.create! valid_attributes
      delete :destroy, {:id => list.to_param}, valid_session
      expect(response).to redirect_to(lists_url)
    end
  end

end
