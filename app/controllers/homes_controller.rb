class HomesController < ApplicationController
 def index
  @homes = Home.search(params[:keyword])
  @keyword = params[:keyword]
 
  
  
  @randams = Home.order("RAND()").limit(5)
   render "index"
 end
end
