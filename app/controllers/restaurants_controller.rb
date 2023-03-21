class RestaurantsController < ApplicationController

    def index
        restaurant = Restaurant.all
        render json: restaurant
    end

    def show
        restaurant = Restaurant.find_by(id: params[:id])
        if restaurant
            render json: restaurant, include: :pizzas
        else 
            render json:{error: "Restaurant not found"}, status: :not_found
        end
    end

    # def show
    #     restaurant = find_restaurant
    #     if restaurant
    #         render json: restaurant, include: :pizzas
    #     else 
    #         render json:{error: "Restaurant not found"}, status: :not_found
    #     end
    # end

    def create
        restaurant = Restaurant.create(restaurant_params)
        if restaurant
            render json: restaurant, status: :created
        else
            render json: {error: "restaurant not created"}, status: :not_acceptable
        end
    end

    def destroy
        restaurant = Restaurant.find(params[:id])

        if restaurant
            restaurant.destroy
            head :no_content
        else
            render json: {error: "Restaurant not created"}, status: :not_found
        end
        
    end
    # def destroy
    #     restaurant = find_restaurant
    #     restaurant.destroy
    #     head :no_content
    # end

    private

    def find_restaurant
        Restaurant.find(params [:id])
    end


    def restaurant_params
        params.permit(:name, :location)
    end

end
