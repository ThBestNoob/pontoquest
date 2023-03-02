class MainController < ApplicationController

  http_basic_authenticate_with name: "pontomais", password: "ponto123", only: :configurations

  def index
    @teams = Team.all
  end

  def authenticate
    puts "\n\n\n\n"
    puts params
    puts "\n\n\n\n"

    agent = Agent.find(params[:agent])

    if params[:pin] == agent.pin
      redirect_to action: "answering", agent: params[:agent]
    else
      if params[:pin] == ""
        flash[:alert] = "Preencha a senha para prosseguir"
        show_alert
      else
        flash[:alert] = "Senha incorreta"
        show_alert
      end
    end
  end

  def answering
    @question = Question.all.sample
    @answer = Answer.new
    @agent = Agent.find(params[:agent])
  end

  def answer
    @agent = Agent.find(params[:agent])
    @question = Question.find(params[:question])
    @alternative = Alternative.find(params[:alternative])

    answer = Answer.new(agent: @agent, question: @question, alternative: @alternative)
    
    answer.save

    show_correction
  end

  def configurations

  end

  private

  def show_alert
    render turbo_stream:
      turbo_stream.replace("alert",
        partial: "main/flash"
      )
  end

  def show_correction

    if @alternative.correct 
      render turbo_stream:
        turbo_stream.replace("correction",
          partial: "main/correct"         
        )
    else
      render turbo_stream:
        turbo_stream.replace("correction",
            partial: "main/wrong"         
        )
    end
  end
end
