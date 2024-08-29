class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @surveys = Survey.all
  end
end
