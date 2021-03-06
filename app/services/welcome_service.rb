# frozen_string_literal: true

class WelcomeService
  def initialize(params = {})
    @params = params
  end

  def show_all
    retrieve_advertisements(status: @params[:status])
  end

  def show
    binding.pry
    retrieve_advertisements(
      status: @params[:status],
      id: @params[:advertisement_id]
    )
  end

  private

  # Retrieve al the active dvertisement
  def retrieve_advertisements(params)
    Advertisement.where(params)
  end
end
