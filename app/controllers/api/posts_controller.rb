class Api::PostsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create

    if Post.create_from_postmark(Postmark::Mitt.new(request.body.read))
      render :text => "Created a post!", status: :created
    else
      render :text => "Unauthorized!", status: :unauthorized
    end
  end
end
