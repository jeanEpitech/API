defmodule ApiDevWeb.Router do
  use ApiDevWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  

  scope "/", ApiDevWeb do
    pipe_through :browser


    get "/", PageController, :index 
  end

  # Other scopes may use custom stacks.
  scope "/api", ApiDevWeb do
    pipe_through :api

    #resources "/users", UserController, except: [:new, :edit]
    post "/users", UserController, :create
    get "/users/:id", UserController, :show
    put "users/:id", UserController, :update
    delete "users/:id", UserController, :delete
    # get "/users?email=XXX&username=YYY", UserController, :show

    # resources "/workingTime", WorkingtimeController, except: [:new, :edit]

    post "/workingtimes", WorkingtimeController, :create
    get "/workingtimes/:id", WorkingtimeController, :show

    # resources "/clocks", ClockController, except: [:new, :edit]
    post "/clocks", ClockController, :create
    get "/clocks/:id", ClockController, :show

    # post "/users", UserController, :create
    # get "/users/:userID", UserController, :index
    # # put "/users/:userID", UserController, :update
    # delete "/users/:userID", UserController, :delete
    
    # scope "/users", ApiDevWeb do
    #   get "/?email=XXX&username=YYY", UserController, :show
    #   # get "/:userID", UserController, :index
    #   post "/", UserController, :create
    #   put "/:userID", UserController, :update
    #   # delete "/:userID", UserController, :delete
    # end

    # scope "/workingTime", ApiDevWeb do
    
    #   get "/:userID/?start=XXX&end=YYY", WorkingtimeController, :index
    #   get "/:userID/:workingtimeID", WorkingtimeController, :show
    #   post "/:userID", WorkingtimeController, :create
    #   put "/:id", WorkingtimeController, :update
    #   delete "/:id", WorkingtimeController, :delete

    # end

    # scope "/clocks", ApiDevWeb do

    #   get "/:userID", ClockController, :show
    #   post "/:userID", ClockController, :create
    # end
  end
end
