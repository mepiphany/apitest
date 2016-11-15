class QuickbooksController < ApplicationController
  protect_from_forgery with: :null_session
  def curl_get_example
    render text: "Get request"
  end

  def curl_post_example
    render text: "Post request #{request.body.read}"
  end
end
