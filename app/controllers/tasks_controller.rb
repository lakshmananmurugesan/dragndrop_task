class TasksController < ApplicationController
  #Showing current items in db table
  def index
    @drags = Drag.order('position')
  end

  #Updating positions of items
  def sort
    params[:drag].each_with_index do |id,index|
      Drag.where(:name => "Item "+id).limit(1).update_all(:position => index)
    end
    render nothing: true
  end

end
