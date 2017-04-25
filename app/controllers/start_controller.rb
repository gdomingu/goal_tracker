class StartController < ApplicationController
  def start
    @goals = Goals::Goal.last(10)
  end

  def settings
    render 'placeholder'
  end

  def profile
    render 'placeholder'
  end

  def help
    render 'placeholder'
  end
end
