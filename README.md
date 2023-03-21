# PIZZA_RESTAURANT API

This is Pizza_Restaurant's API.
It contans data about the three tables and how they interact with each other.


### Things you may want to cover when running the application:

* Ruby version (2.7.4)

* System dependencies

    Run $ bundle install to get the depencaies for the application.
    To run the back end server run $ rails s.
    This will run on port [http://localhost:3000]

* Configuration



* Database creation

    The Database was created using db diagram out of preferrences.
    To view the ERD diagram click the link below:
    https://dbdiagram.io/d/64161413296d97641d88fc8e


* Database initialization

    For the Database we have three tables namely; Restaurants, PIzzas and RestaurantPizzas.

* How to run the test suite

    There are no tests for this application currently.


* Deployment instructions

(not yet deployed at the moment.)

## API Creation Proccess

* Creating a new Rails API

    Firstly  we run the following command to create a new rails api:
    $ rails new Pizza_Restaurant --api --minimal

* Generating the required Resources

    Run the following commands to generate the three resources

    1. $ rails g resource Pizza name ingredients --no-test-framework
    2. $ rails g resource Restaurant name address --no-test-framework
    3. $ rails g resource Restaurant_pizza price:integer restaurant_id:belongs_to pizza_id:belongs_to --no-test-framework

* Model Relationships

    - A `Restaurant` has many `Pizza`s through `RestaurantPizza`

    - A `Pizza` has many `Restaurants through `RestaurantPizza`

    - A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `Pizza`

## ROUTES

    Each resource has it own specific routes as specified in the ./configroutes.rb folder .
    
     Pizzas routes; resources :pizzas, only: [:index, :create]

     Restaurants routes; resources :restaurants, only: [:index, :show, :destroy, :create]
    
     Restaurant_pizzas routes; resources :restaurant_pizzas, only: [:create, :index, :destroy]

#### POST / create restaurant_pizza


Headers
-------
Content-Type: application/json


Request Body
------
{
   "price" 10,
  "restaurant_id": 4,
  "pizza_id": 4,
}


Response Body
-------
{
  "id": 4,
  "price" 10,
  "restaurant_id": 4,
  "pizza_id": 4,
  "created_at": ,
  "updated_at": 
}

#### DELETE/ destroy Restaurant_pizza

Making a DELETE request to this route should delete one plant from the database.
You should return a response of `head :no_content` to indicate a successful
deletion.

DELETE /restaurant_pizza/:id


Response Body
------
no content
```



