class AttachesController < ApplicationController

  def index
  	@attaches=Attach.all
  end

  def new
  	@attach=Attach.new
  end

  def create
  	@attach=Attach.new(attach_params)
  	if @attach.save
  		redirect_to attaches_index_path, notice:'The attachment #{@attach.name} has been uploaded'
  	else
  		render 'new'
  	end
  end

  def destroy
  	@attach=Attach.find(params[:id])
  	@attach.destroy
  	redirect_to attaches_index_path, notice: 'The attachment #{@attach.name} has been deleted'
  end

  private
  def attach_params
  	params.require(:attach).permit(:name,:attachment)
  	
  end

end
