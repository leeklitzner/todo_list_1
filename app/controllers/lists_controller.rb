class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def edit
    @list = List.find(params[:id])
    render :form
  end

  def create
    @list = List.new(page_params)

    if @list.save
      redirect_to list_path(@list)
    else
      render :form
    end
  end

  def update
    @list = List.find(params[:id])

    if @list.update(list_params)
      redirect_to list_path(@page)
    else
      render :form
    end
  end

  def destroy
    List.find(params[:id]).destroy
    redirect_to lists_path
  end

  private
    def list_params
      lists.require(:page).permit(:what, :where, :when)
    end

end
