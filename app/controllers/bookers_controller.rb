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
        
        if book.save
      flash[:notice] = "successfully"
        redirect_to bookers_path
    	end
  end

  def edit
  	@book = Booker.find(params[:id])
  end

  def update
    book = Booker.find(params[:id])
    if book.update(booker_params)
      flash[:notice] = "successfully"
        redirect_to booker_path(book)
    end
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
