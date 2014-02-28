User will turn on program
Program will welcome user "Welcome to DBC Quiz Factory!"
# User will fetch a quiz
#Program will announce the beginning of the quiz "Quiz beginning"

game loop
  Console will display a question
  User inputs guess into console
    - if user_guess == quiz_answer then move on to next question
      else the console tell them to try again.
      user inputs new guess
      user can input an escape word to move to next question
 end loop when all questions answered

 display score

 score a tally of all questions answered correctly

# class DataAdapter
#   convert_txt_to_quizinit(filepath)
# end

class Quiz
def initialize
  @questions = []
  #Read in a txt file and fill this array with initialized Question objects
end

def next_question
  #return a Question object
end


end


class Question
  attr_reader :question, :answer
#stores question and answer text and stores them internally
#be able to call question and answer
#if using a hash then question refers to the key and answer value
#returns strings of question/answer
  def initialize(options{})
    @question = options[:question]  #-> these are strings
    @answer = options[:answer]
  end

end


class QuizProgram

  def run
    #main program loop is in here
    #Tell Display to show welcome
    #Wait for user to pr
  end



end

class Display
  class << self
    def welcome_screen
    end

    def show_question(input_string)
    end

    def show_wrong_answer
    end

    def show_correct_answer
    end

    def summary_screen(score, max_score)
    end

  end
end








