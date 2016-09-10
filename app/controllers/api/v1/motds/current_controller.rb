class Api::V1::Motds::CurrentController < Api::ApiController
  def index
    respond_with Motd.current.first
  end
end
