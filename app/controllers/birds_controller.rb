class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    # render plain: "#{@birds[1].name}"
    render json: { birds: @birds, messages: ["Hello!", "Goodbye!"]}
  end

  def show
    @bird = Bird.find(params[:id])
    render plain: "#{@bird.name}"
  end
end
