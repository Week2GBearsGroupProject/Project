class Display
  class << self
    def welcome_screen
        puts "Welcome to Quiz Program 2.0! Quiz will begin now."
    end

    def show_question(input_string)
        puts next_question
    end

    def show_wrong_answer
        puts "Sorry that's not the correct answer. Please try again."
    end

    def show_correct_answer
        puts "That is correct. Here's the next question."
    end

    def summary_screen(score, max_score)
        puts "You got a score of #{score}, out of a max score of #{max_score}."
    end

  end
end