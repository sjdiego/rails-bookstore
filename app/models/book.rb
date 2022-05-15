class Book 
    include Dynamoid::Document

    table name: :books, key: :id

    field :title, :string
    field :category, :string
    field :year, :string
end