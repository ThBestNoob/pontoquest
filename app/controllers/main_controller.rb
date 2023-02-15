class MainController < ApplicationController
  def index
    @teams = Team.all
  end

  def answering
    @question = Question.all.sample
    @answer = Answer.new
  end

  def answer

    @alternative = Alternative.find(params[:alternative])
    # puts "\n_____________________________________\n\n"
    # puts "Questão: #{params[:question]}"
    # puts "Alternativa selecionada: #{params[:alternative]}"

    # if alternative.correct
    #   puts 'CORRETO'
    # else
    #   puts 'INCORRETO'
    # end
    # puts "\n_____________________________________\n"

    show_correction
  end

  def configurations

  end

  private

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
