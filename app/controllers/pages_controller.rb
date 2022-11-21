class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if params[:answer] == 'I am going to work'
      @coach = 'Great!'
    elsif params.include? '?'
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
