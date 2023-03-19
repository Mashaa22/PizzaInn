class PizzasController < ApplicationController
    def index
        pizzas = Pizza.all
        render json: pizzas
    end

    def show
        pizzas = Pizza.all 
        render json: pizzas
    end
    
    def create
        pizza = Pizza.create(pizza_params)
        if pizza
            render json: pizza, status: :created
        else
            render json: {error: "Pizza not created"}, status: :not_acceptable
        end
    end
    
    def update
        pizza = find_pizza
        if pizza
            pizza.update(pizza_params)
            render json: pizza
        else
            render json: {error: "Pizza not updated"}, status: :unprocessable_entity
        end
    end

    def destroy
        pizza = find_pizza
        if pizza
            pizza.destroy
        else
            render json: {error: "Pizza not found"}, status: :not_found
        end
    end

    
    private 

    def find_pizza
        Pizza.find(params[:id])
    end

    def pizza_params
        params.permit(:name, :ingredients)
    end
end
