Rails.application.routes.draw do
  # Routes for the Movie resource:
  # CREATE
  get("/movies/new",       { :controller => "movies", :action => "new" })
  post("/movies",          { :controller => "movies", :action => "create" })

  # READ
  get("/movies",           { :controller => "movies", :action => "index" })
  get("/movies/:id",       { :controller => "movies", :action => "show" })

  # UPDATE
  get("/movies/:id/edit",  { :controller => "movies", :action => "edit" })
  patch("/movies/:id",     { :controller => "movies", :action => "update" })

  # DELETE
  delete("/movies/:id",    { :controller => "movies", :action => "destroy" })
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get("/actors/new",       { :controller => "actors", :action => "new" })
  post("/actors",          { :controller => "actors", :action => "create" })

  # READ
  get("/actors",           { :controller => "actors", :action => "index" })
  get("/actors/:id",       { :controller => "actors", :action => "show" })

  # UPDATE
  get("/actors/:id/edit",  { :controller => "actors", :action => "edit" })
  patch("/actors/:id",     { :controller => "actors", :action => "update" })

  # DELETE
  delete("/actors/:id",    { :controller => "actors", :action => "destroy" })
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get("/directors/new", { :controller => "directors", :action => "new_form" })
  get("/add_director", { :controller => "directors", :action => "create_row" })

  # READ
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/:id", { :controller => "directors", :action => "show" })

  # DELETE
  get("/delete_director/:id", { :controller => "directors", :action => "destroy" })
  #------------------------------
end
