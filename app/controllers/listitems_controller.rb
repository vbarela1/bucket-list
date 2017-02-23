class ListitemsController < ApplicationController
  before_action :set_bucketlist
  before_action :set_listitem, only: [:show, :edit, :update, :destroy]

  def index
    @listitems = @bucketlist.listitems 
    flash[:info] = 'Welcome to the Bucket List Items!'
  end

  def show 
  end

  def new
    @listitem = Listitem.new 
  end

  def create
    @listitem = @bucketlist.listitems.new(listitem_params)
    if @listitem.save
      flash[:success] = 'New List Item Created!'
      redirect_to bucketlist_listitem_path(@bucketlist, @listitem)
    else  
      flash[:error] = "Please try Again. #{@listitem.errors.full_messages.to_sentence}"
      render :new
    end
  end 

  def edit
    @title = 'Edit List Item'
  end

  def update 
    if @listitem.update(listitem_param)
      flash[:success] = 'List Item Updated!'
      redirect_to listitem_path(@bucketlist, @listitem)
    else
      flash[:error] = 'Please Try Again'
      render :edit
    end
  end 

  def destroy
    @listitem.destroy
    redirect_to bucketlist_listitems_path(@bucketlist)
  end 
private 

  def set_bucketlist
    @bucketlist = Bucketlist.find(params[:bucketlist_id])
  end 

  def set_listitem 
    @listitem = @bucketlist.listitems.find(params[:id])
  end 

  def listitem_params 
    params.require(:listitem).permit(:title, :description, :complete, :bucketlist_id)
  end 
end

