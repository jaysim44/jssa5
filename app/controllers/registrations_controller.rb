class RegistrationsController < Devise::RegistrationsController
  def create
    super
      if resource.save
        @customer = customer.new
        @customer.user_id = resource.id
        @profile.save
      end
    end
  end