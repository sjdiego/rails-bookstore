class EditController < ApplicationController
    add_flash_types :success, :warning, :error
    def index
        @book = Book.find(params[:id])
    end

    def update
        unless params[:title].present? || params[:category].present? || params[:year].present?
            return redirect_to list_books_path, warning: "Missing parameters."
        end

        book = Book.find(params[:id])

        if params[:title]
            book.title = params[:title]
        end

        if params[:category]
            book.category = params[:category]
        end

        if params[:year]
            book.year = params[:year]
        end

        if !book.save 
            return redirect_to add_book_path, error: "Error updating the book."
        end

        return redirect_to list_books_path, success: "You have successfully updated the book id #{book.id}."
    end
end
