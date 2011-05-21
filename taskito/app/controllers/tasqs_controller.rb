class TasqsController < ApplicationController
  def index
    @tasqs = Tasq.all
  end
  
  def show
    @tasq = Tasq.find(params[:id])
  end
  
  def new
    @tasq = Tasq.new
  end
  
  def create
    @tasq = Tasq.new(params[:tasq])
  end
  
  def edit
    @tasq = Tasq.find(params[:id])
  end
  
  def update
    @tasq = Tasq.find(params[:id])
    if @tasq.update_attributes(params[:tasq])
      flash[:notice] = "Successfully updated tasq."
      redirect_to @tasq
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tasq = Tasq.find(params[:id])
    @tasq.destroy
    flash[:notice] = "Successfully destroyed tasq."
    redirect_to tasqs_url
  end
end
