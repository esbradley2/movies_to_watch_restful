class ActorsController < ApplicationController
  def edit
    @actor = Actor.find(params["id"])
  end

  def update
    @actor = Actor.find(params["id"])

    @actor.title = params["name"]
    @actor.year = params["bio"]
    @actor.duration = params["dob"]
    @actor.image_url = params["image_url"]

    @actor.save

    redirect_to "http://localhost:3000/actors/#{@actor.id}"
  end

  def create
    @actor = Actor.new

    @actor.title = params["name"]
    @actor.year = params["bio"]
    @actor.duration = params["dob"]
    @actor.image_url = params["image_url"]

    @actor.save

    redirect_to "http://localhost:3000/actors/#{@actor.id}"
  end

  def new
  end

  def index
    @actor = Actor.all
  end

  def show
    @actor = Actor.find(params["id"])
  end

  def destroy
    @actor = Actor.find(params["id"])

    @actor.destroy

    redirect_to "http://localhost:3000/actors"
  end

end
