class HomeController < ApplicationController
  def index
	@feedbacks = Feedback.recent
  end
end
