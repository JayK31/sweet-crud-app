class CatsController < ApplicationController
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

  private

  def cat_params
    params.require(:cat).permit(:name, :image_url)
  end

end
