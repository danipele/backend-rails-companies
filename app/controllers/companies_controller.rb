class CompaniesController < ApplicationController
  def fetch_all
    render json: { companies: Company.all }
  end
end
