class Api::V1::Motds::CurrentController < Api::ApiController
  def index
    respond_with Motd.all
  end
end
