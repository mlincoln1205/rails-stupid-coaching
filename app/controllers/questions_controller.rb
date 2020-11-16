class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:user]

    if @user_input == 'I am going to work'
      @answers = 'Great!'
    elsif @user_input[-1] == '?'
      @answers = 'Silly question, get dressed and go to work!'
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end
