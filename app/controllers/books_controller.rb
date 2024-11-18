class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @user = current_user
    @books = Book.all
  end

  def show
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end
end
