class PicsController < ApplicationController
	before_action :find_doc, only: [:show, :edit, :update, :destroy]

def index
    @pics =Pic.all
  end
  
  def show
  end

  def new
     @pic = Pic.new
  end

  def create
    @pic = Pic.new(doc_params)

    if @pic.save
      redirect_to @pic
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @pic.update(doc_params)
      redirect_to @pic
    else
      render 'edit'
    end
  end

  def destroy
     @pic.destroy
     redirect_to pics_path
  end

  private

    def find_doc
      @pic=Pic.find(params[:id])
    end

    def doc_params
      params.require(:pic).permit(:title, :domain, :content)
    end
end

