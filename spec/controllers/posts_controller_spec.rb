require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe 'GET index' do
    subject { get :index }
    it 'has a 200 status code' do
      get :index
      expect(subject.status).to eq(200)
    end
    it 'should render :index template' do
      expect(subject).to render_template(:index)
    end
  end

  describe 'GET show' do
    it 'should return 200 status code' do
      post = FactoryGirl.create(:post)
      get :show, params: { id: post.id }
      expect(subject.status).to eq(200)
    end
    it 'should render :show template' do
      post = create(:post)
      get :show, params: { id: post.id }
      expect(response).to render_template(:show)
    end
    # it 'should return 404 status code if record not found' do
    #   get :show, params: { id: 0 }
    #   response.status.should == 404
    # end
  end
  describe 'POST create' do
    subject { post :create, params: { post: { title: 'asd', body: '123', who: 1 } } }
    it 'check that after create post returns 201 status code' do
      expect(subject.status).to eq(302)
    end
    it 'should redirect to :index action' do
      expect(subject).to redirect_to(posts_path)
    end
  end
  describe 'PUT update' do
    subject { put :update, params: { id: 1, post: { title: 'asd', body: '123', who: 1 } } }
    it 'check that post updates' do
      expect(subject).to redirect_to(post_path(id: 1))
    end
  end
  # describe 'DELETE destroy' do
  #   # subject { put :update, params: { id: post.id } }
  #   it 'should destroy post' do
  #     post = create(:post)
  #     expect { delete post_path(id: post.id) }.should_not change(Post, :count)
  #   end
  # end
end
