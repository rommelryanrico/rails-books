class BooksController < ApplicationController
  def index
  
    @books = Book.all.order("created_at DESC")
  end
  
  def new
    @books = Book.new
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
  
    if @book.update(book_params)
      redirect_to @book
    else
      render 'edit'
    end
  end
  
  def create
    @book = Book.new(book_params)
  
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  
  end
  
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
   
    redirect_to books_path
  end
  
  
  private
  def book_params
    params.permit(:title, :author, :publisher, :genre, :description)
  end

end
  
