class Api::V1::BooksController < ApplicationController 
	def index 
		render json: BookSerializer.new(Book.all)
	end 

	def show 
		begin
			render json: BookSerializer.new(Book.find(params[:id]))
		rescue ActiveRecord::RecordNotFound => exception
			binding.pry 
		end
	end 

	def create 
		new_book = Book.create(book_params)
		render json: BookSerializer.new(new_book)
	end 
		
	def update 
		book = Book.find(params[:id])
		book.update(book_params)
		render json: BookSerializer.new(book)
	end 

	def destroy 
		book = Book.find(params[:id])
		render json: BookSerializer.new(Book.destroy(params[:id]))
	end 

	private 


    def book_params
			params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
    end 
end 