class StaticPagesController < ApplicationController
  def home
  	if user_signed_in?
    	redirect_to :controller=>'dashboard', :action=> 'index'
  	end
  end

  def about
  end

  def contact
  end
end
