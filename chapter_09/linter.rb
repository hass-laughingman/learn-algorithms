require_relative './stack'

class Linter
  def initialize
    # we use a simple array to serve as out stack
    @stack = Stack.new
  end

  def lint(text)
    # we start a loop which reads each character in our text
    text.each_char do |char|
      # if the character is an opening brace
      if is_opening_brace?(char)

        # we push it onto the stack
        @stack.push(char)
        
      # if the character is a closing brace
      elsif is_closing_brace?(char)

        # pop from stack
        popped_opening_brace = @stack.pop

        # if the stack was empty, so what we popped was nil
        # it means that an opening brace is missing
        if !popped_opening_brace
          return "#{char} doesn't have opening brace"
        end

        # if the popped opening brance doesn't match the
        # current clasing brace, we produce an error
        if is_not_a_match(popped_opening_brace, char)
          return "#{char} has mismatched opening brace"
        end
      end
    end

    # if we get to the end of line, and the stack isn't empty
    if @stack.read

      # it means we have an opening brace without a 
      # corresponding closing brace, so we produce an error
      return "#{@stack.read} does not have closing brace"
    end

    # return true if line has no errors
    return true
  end

  private

  def is_opening_brace?(char)
    ['(', '[', '{'].include?(char)
  end

  def is_closing_brace?(char)
    [')', ']', '}'].include?(char)
  end

  def is_not_a_match(opening_brace, closing_brace)
    closing_brace != {'(' => ')', '[' => ']', '{' => '}'}[opening_brace]
  end
end
