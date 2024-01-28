class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "Say something! 😡"
    elsif @question =~ /i am going to work/i
      @answer = "I'm proud of you 🥹"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work! 😤"
    else
      @answer = "I don't care, get dressed and go to work! 😤"
    end
  end
end
