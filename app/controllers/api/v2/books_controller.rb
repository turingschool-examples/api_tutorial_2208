class Api::V2::BooksController < ApplicationController 

    def show 
        render json: {"v2"=> "new book show endpoint"}
    end 

end 