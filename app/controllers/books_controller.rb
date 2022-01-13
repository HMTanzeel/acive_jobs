class BooksController < ApplicationController
  def index
    @hello_message = "List of Books"
    @books = Book.all
    # @books.each do |author|
    #   author = Author.where(:id => @books.author_id).first
    # end
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book = Book.find(params[:id])

    book_title = @book.title
    author = @book.author
    book_price = @book.price
    book_prints = @book.prints

    if @book.destroy
      DeleteMailer.with(book: book_title, author: author, price: book_price, prints: book_prints).delete_book_email.deliver_later
      flash[:success] = "Book successfully deleted."
      redirect_to root_path, status: :see_other
  end

  private
    def book_params
      params.require(:book).permit(:title, :price, :prints, :author_id)
      # params.require(book: :author).permit(:name)
    end
end
