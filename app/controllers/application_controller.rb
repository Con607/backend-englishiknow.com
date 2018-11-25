class ApplicationController < ActionController::API
  include ActionController::MimeResponds
  respond_to :json


  def render_resource(resource)
    if resource.errors.empty?
      render json: resource
    else
      validation_error(resource)
    end
  end

  def validation_error(resource)
    render json: {
      errors: [
        {
          status: '400',
          title: 'Bad Request',
          detail: resource.errors,
          code: '100'
        }
      ]
    }, status: :bad_request
  end

  def is_admin
    puts '##########################################'
    puts current_user.admin?
    puts current_user.role
    puts current_user.email
    puts '##########################################'
    unless current_user.admin?
      # head is equivalent to a rendering
      head(401)
    end
  end

  

end
