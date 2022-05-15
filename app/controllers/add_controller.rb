class AddController < ApplicationController  
    add_flash_types :success, :warning, :error
    def create
        unless params[:title].present? && params[:category].present? && params[:year].present?
            return redirect_to add_book_path, warning: "Missing parameters."
        end

        book = Book.new(title: params[:title], category: params[:category], year: params[:year])

        if !book.save 
            return redirect_to add_book_path, error: "Error creating the book."
        end

        return redirect_to list_books_path, success: "You have successfully created the book with id: #{book.id}."
    end
end
