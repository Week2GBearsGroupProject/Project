require 'csv'

class Quiz
  def initialize
    @questions = []
    ruby_info = CSV.read('ruby_questions.csv',{ :quote_char => "*"}).each_slice(3).map { |array| array.flatten}
    ruby_info.each do |qa_pair|
     @questions << Question.new({:question => qa_pair[0], :answer => qa_pair[1]})
    end
  end

  def next_question
    #return a Question object
    @questions.sample
  end
end

class Question
  attr_reader :question, :answer
#stores question and answer text and stores them internally
#be able to call question and answer
#if using a hash then question refers to the key and answer value
#returns strings of question/answer
  def initialize(options = {})
    @question = options[:question]  #-> these are strings
    @answer = options[:answer]
  end

end