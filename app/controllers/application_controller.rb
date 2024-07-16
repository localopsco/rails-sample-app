class ApplicationController < ActionController::API
  def health
    status = {status: "ok"}
    render json: status
  end
end
