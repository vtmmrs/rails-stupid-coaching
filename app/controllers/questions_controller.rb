class QuestionsController < ApplicationController
  def ask
    # 'views/questions/ask.html.erb'
  end

  def answer
    # 'views/answers/answer.html.erb'
    question = params[:question]

    if question == 'I am going to work'
      @ask = 'Great!'
    elsif question.ends_with?('?')
      @ask = 'Silly question, get dressed and go to work!'
    else
      @ask = "I don't care, get dressed and go to work!"
    end
  end
end
