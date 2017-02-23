class BucketlistsController < ApplicationController
  before_action :set_bucketlist, only: [:show, :edit, :update, :destroy]
  
  def index
    @title = 'Bucket Lists'
    @bucketlists = current_user.bucketlists.paginate(page: params[:page], per_page: 6)
    # flash[:info] 'Welcome to Bucket Lists!'
  end

  def show
 
  end

  def new
    @bucketlist = current_user.bucketlists.new 
  end

  def create
    @bucketlist = current_user.bucketlists.new(set_bucketlist_params)
    if @bucketlist.save 
      flash[:sucesss] = 'New Bucket List Created!'
      redirect_to bucketlist_path(@bucketlist)
    else 
      flash[:error] = 'Please Try Again.'
      render :new 
    end 
  end 

  def edit
    @title = 'Edit Bucket List.'
  end

  def update
    if @bucketlist.update(set_bucketlist_params)
      flash[:success] = 'Bucket List Updated!'
      redirect_to bucketlist_path(@bucketlist)
    else 
      flash[:error] = 'Please Try Again.'
      render :edit
    end 
  end 

  def destroy
    @bucketlist.destroy 
    flash[:success] = 'Bucket List Removed!'
    redirect_to bucketlists_path 
  end 

private 
  def set_bucketlist
    @bucketlist = Bucketlist.find(params[:id])
  end 

  def set_bucketlist_params
    params.require(:bucketlist).permit(:title)
  end 
end

