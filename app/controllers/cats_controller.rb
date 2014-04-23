class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
      if @cat.save
        redirect("/")
      else
        render :new
      end
    end
  end

  def edit
    @cat = Cat.find(params[:id])
  end

  def update
    cat = Cat.find(params[:id])

    cat.update(cat_params)

    redirect_to cat_path(cat)
  end


  private

  def cat_params
    params.require(:cat).permit(:name, :image_url)
  end

end
