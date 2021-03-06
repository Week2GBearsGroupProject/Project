# User will turn on program
# Program will welcome user "Welcome to DBC Quiz Factory!"
# # User will fetch a quiz
# #Program will announce the beginning of the quiz "Quiz beginning"

# game loop
#   Console will display a question
#   User inputs guess into console
#     - if user_guess == quiz_answer then move on to next question
#       else the console tell them to try again.
#       user inputs new guess
#       user can input an escape word to move to next question
#  end loop when all questions answered

#  display score

#  score a tally of all questions answered correctly

# # class DataAdapter
# #   convert_txt_to_quizinit(filepath)
# # end

require_relative 'data'

require_relative 'displayclass'

class QuizProgram
  def self.run
    Display.welcome_screen
    quiz1 = Quiz.new
    @score = 0
    gets.chomp  #Wait for user to hit enter

    #main program loop is in here
    while true

      #Get next question from Quiz, save to a temp_var
      cur_question = quiz1.next_question

      #Tell display to show user the question
      Display.show_question(cur_question.question)

      #Get user input
      user_answer = gets.chomp

      #Compare user input to the current_q's answer
      #conditional logic to go to next approrpirate step (next question or incorrect screen)
      if user_answer == cur_question.answer
        Display.show_correct_answer
        @score += 1
      else
        Display.show_wrong_answer
      end
    end
    Display.summary_screen(@score, "ERROR")
  end
end

QuizProgram.run

nil







