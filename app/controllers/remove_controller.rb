class RemoveController < ApplicationController
    add_flash_types :success, :error
    def delete
        book = Book.find(params[:id])
        id = book.id
        
        if !book.delete 
            return redirect_to list_books_path, error: "Error removing the book."
        end

        return redirect_to list_books_path, success: "You have successfully removed the book id #{id}."
    end
end
