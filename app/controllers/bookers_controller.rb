class BookersController < ApplicationController
  def show
  	@book = Booker.find(params[:id])
  end

  def index
  	  @book = Booker.new
  	  @books= Booker.all
end

  def new
  		@book = Book.new
  end

  def create
  		book = Booker.new(booker_params)
        book.save
        redirect_to bookers_path
  end

  def edit
  	@book = Booker.find(params[:id])
  end

  def update
    book = Booker.find(params[:id])
    book.update(blog_params)
    redirect_to booker_path
  end

  def destroy
        book = Booker.find(params[:id])
        book.destroy
        redirect_to bookers_path
  end
  private
    def booker_params
        params.require(:booker).permit(:title, :body)
    end
end
