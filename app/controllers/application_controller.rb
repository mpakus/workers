# frozen_string_literal: true

class ApplicationController < ActionController::Base
  layout :layout_by_resource

  before_action :authenticate_user!

  private

  def layout_by_resource
    devise_controller? ? 'devise' : 'application'
  end
end
