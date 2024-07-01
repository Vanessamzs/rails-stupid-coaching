# app/controllers/questions_controller.rb
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @questions = params[:questions]
    @answer = if params[:questions] == 'I am going to work'
                'Great!'
              elsif params[:questions].include?('?')
                'Silly question, get dressed and go to work!'
              else
                'I don t care, get dressed and go to work!'
              end
  end
end
