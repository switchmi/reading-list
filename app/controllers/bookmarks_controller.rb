class BookmarksController < ApplicationController

  before_action :prepare_book

  def show

  end

  def index

  end

  def new
    @bookmarks = @book.bookmarks.new
  end

  def create
    @bookmark = @book.bookmarks.new(get_params)
    if @bookmark.save
      redirect_to book_path(@book), method: :get
    else
      # byebug
      render :new
    end
  end

  def edit
    @bookmarks = Bookmark.find(params[:id])
  end

  def update
    @bookmarks = Bookmark.find(params[:id])
    if @bookmarks.update(get_params)
      redirect_to book_path
    else
      render :edit
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to book_path
  end

  private

  def get_params
    params.require(:bookmark).permit(:page_num, :description)
  end


  def prepare_book
    @book = Book.find(params[:book_id])
  end

end
