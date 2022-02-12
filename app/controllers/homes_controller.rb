class HomesController < ApplicationController
 def index
  
  @title = "バイクを検索する"
 
  @url ="https://maps.googleapis.com/maps/api/js?key="+ENV['GOOGLE_MAP_API']+"&callback=initMap"
  
 
 
   
 
 end
end
