class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def index
    @books = Book.all
  end

  def new
    @books = Book.new
  end

  def create
    @books = Book.new(get_params)
    if @books.save
      redirect_to books_path
    else
      # byebug
      render :new
    end
  end

  def edit
    @books = Book.find(params[:id])
  end

  def update
    @books = Book.find(params[:id])
    if @books.update(get_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end

  private

  def get_params
    params.require(:book).permit(:name, :author, :read)
  end

end
