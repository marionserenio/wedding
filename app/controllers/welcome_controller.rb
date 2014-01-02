class WelcomeController < ApplicationController
  def index
    @posts = Posts.find(:all, :limit => 10, :order => 'date_posted', :include => :user)
  end
end