class ListController < ApplicationController
  add_flash_types :notice, :warning

  def index
    @books = Book.all
  end
end
