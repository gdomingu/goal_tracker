class StartController < ApplicationController
  def start
    @goals = Goals::Goal.last(10)
  end
end
