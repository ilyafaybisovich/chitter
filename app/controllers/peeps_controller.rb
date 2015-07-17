class PeepsController < ApplicationController
  def index
    @peeps = Peep.all
  end

  def new
    @peep = Peep.new
  end

  def create
    @peep = Peep.new peep_params
    if @peep.save
      redirect_to root_path
    end
  end

  private 

  def peep_params
    params.require(:peep).permit(:text)
  end
end
