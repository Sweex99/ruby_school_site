class CollectiveController < ApplicationController
  layout 'application'

  def index
    @user = User.all
  end
end
