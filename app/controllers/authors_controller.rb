class AuthorsController < ApplicationController
  before_action :set_author_params, only: %i[show edit update destroy]
  before_action :logged_in_user, only: [:edit, :update, :destroy]


  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def create
    @author = Author.create(author_params)
    if @author.valid?
      flash[:errors] = 'Author Added Successfully'
      redirect_to authors_path
    else
      flash[:errors] = @author.errors.full_messages
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @author.update(author_params)
      flash[:errors] = 'Author Updated Successfully'
      redirect_to author_path(@author)
    else
      flash[:errors] = @author.errors.full_messages
      redirect_to edit_author_path
    end
  end

  def destroy
    if @author.delete
      flash[:errors] = 'Author Deleted Successfully'
      redirect_to root_path(@author)
    else
      flash[:errors] = @author.errors.full_messages
      redirect_to destroy_author_path
    end
  end

  private

  def set_author_params
    @author = Author.find(params[:id])
  end

  def author_params
    params.require(:author).permit(:author_name, :gender, { books: [] }, :age, :publisher, :number_of_books_published)
  end
end
