class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question].downcase
    if @question.include?('?')
      @coach = 'Silly question, get dressed and go to work!'

    elsif @question == 'i am going to work'
      @coach = 'Great'

    else
      @coach = 'WHAT!?!?!?'
    end
  end
end
