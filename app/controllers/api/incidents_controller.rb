class Api::IncidentsController < Api::BaseController
  def index
    render json: Incident.all.to_json
  end
end