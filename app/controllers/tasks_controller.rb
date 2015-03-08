class TasksController < ApplicationController
  def index
    @drags = Drag.order('position')
  end

  def sort
    params[:drag].each_with_index do |id,index|
      #Drag.update_all({position: id})
      Drag.where(:name => "item "+id).limit(1).update_all(:position => index)
    end
    render nothing: true
  end
end
