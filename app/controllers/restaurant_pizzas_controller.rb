class RestaurantPizzasController < ApplicationController

    def index 
        restaurant_pizza = RestaurantPizza.all
        render json:restaurant_pizza
    end

    def show
        restaurant_pizza = RestaurantPizza.find(params[:id])
        render json:restaurant_pizza
    end

    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if restaurant_pizza.valid?
            render json: restaurant_pizza, status: :created
        else
            render json: {errors: restaurant_pizza.errors}, status: :unprocessable_entity
        end
    end

    def destroy
        restaurant_pizza = RestaurantPizza.find_by(id: params[:id])
        if restaurant_pizza
            restaurant_pizza.destroy
            head :no_content
        else
            render json: {error: "RestaurantPizza not found"}, status: :unprocessable_entity
        end
    end

    private

    def restaurant_pizza_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end
end
