class LandingsController < ApplicationController
  before_action :set_landing, only: [:destroy]
  http_basic_authenticate_with name: "example", password: "pa$$w0rd", except: [:new, :create, :thankyou]

  def index
    @landings = Landing.all
  end

  def thankyou
  end

  def new
    @landing = Landing.new
  end

  def create
    @landing = Landing.new(landing_params)

    if @landing.save
      WelcomeMailer.welcome(@landing).deliver
      redirect_to thankyou_path, notice: 'Success!'
    else
      render action: 'new'
    end
  end

  def destroy
    @landing.destroy
    respond_to do |format|
      format.html { redirect_to landings_url, notice: 'Landing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_landing
      @landing = Landing.find(params[:id])
    end

    def landing_params
      params.require(:landing).permit(:email)
    end
end
