class UsersController < Devise::RegistrationsController
  def new
    render 'Users/registrations/new'
  end

  def create
    # add custom create logic here
  end

  def update
    super
  end

  def sign_out

  end
end