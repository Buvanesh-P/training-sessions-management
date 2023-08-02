class HomeController < ApplicationController
  # before_action :authenticate_user!

  def index
    @categories = Category.all.order(created_at: :desc)
  end

  def search
    puts('yeah coming here')
    @categories = Category.where('name LIKE ?', "%#{params[:search]}%").order(created_at: :desc)
    respond_to do |format|
      format.json { render json: render_to_string(partial: 'categories/category', collection: @categories, formats: [:html]) }
    end
  end
end
