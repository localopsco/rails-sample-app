class ApplicationController < ActionController::API

  def health
    status = {status: "ok"}
    render json: status
  end

  def meta
    render json: { framework: "rails", version: "v1.0.0", stack: "Rails, Postgres, ReactJS", cloud_dependencies: "AWS S3" }
  end

end
