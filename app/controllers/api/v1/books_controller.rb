class Api::V1::BooksController < ApplicationController 
    def index 
        render json: Book.all
    end 

    def show 
        render json: Book.find(params[:id])
    end 

    def create 
        new_book = Book.create(book_params)
        render json: new_book 
    end 
      
    def update 
        book = Book.find(params[:id])
        book.update(book_params)
        render json: book
    end 

    def destroy 
        book = Book.find(params[:id])
        render json: Book.destroy(params[:id])
    end 

    private 


    def book_params
        params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
    end 
end 