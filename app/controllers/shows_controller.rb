class ShowsController < ApplicationController
  before_action :set_show, only: %i[show edit update destroy]
  allow_unauthenticated_access only: %i[index show]

  def index
    @shows = Show.all
    @past_shows = Show.past.order(date: :desc)
    @future_shows = Show.upcoming.order(:date)
  end

  def show
  end

  def new
    @show = Show.new
  end

  def edit
  end

  def create
    Rails.logger.debug params.inspect
    @show = Show.new(show_params)

    if @show.save
      redirect_to @show, notice: "Show was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  def update
    if @show.update(show_params)
      redirect_to @show,
        notice: "Show was successfully updated.",
        status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @show.destroy!

    redirect_to shows_path, notice: "Show was successfully destroyed.", status: :see_other
  end

  private

  def set_show
    @show = Show.find(params.expect(:id))
  end

  def show_params
    params.require(:show).permit(:venue, :city, :date, :show_time, band_ids: [])
  end
end
