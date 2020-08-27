class JourneysController < ApplicationController
  def show
    @journeys = current_user.journeys
    @journey = @journeys.last
    @journey_lessons = @journey.journey_lessons
    @completed_lessons = @journey_lessons.where(complete: true)
    @journey_progress = ((@completed_lessons.length.to_f / @journey_lessons.length)*100).to_i
  end
end
