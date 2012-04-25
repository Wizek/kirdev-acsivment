class HomeController < ApplicationController
  skip_authorization_check :only => :index

  def index
    #render text: 'asd'
    @latestCompleted = Fulfillment.all() #.order('created_at DESC').limit(4).all()
    @latestCreated = Achievement.order('created_at DESC').limit(4).all()
  end
end
