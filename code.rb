#YOUR CODE GOES HERE
require 'pry'

class CaesarCipher
  def initialize(input, shift)
    validate_inputs(input, shift)
    @alphabet = "abcdefghijklmnopqrstuvwxyz"
    @input = input.downcase
    @shifted_alphabet = @alphabet.chars.rotate(shift).join
    # binding.pry
  end
  # binding.pry


  def encrypt
    @input.tr(@alphabet, @shifted_alphabet)
    binding.pry
  end
binding.pry
  private
  def validate_inputs(input, shift)
    unless input.is_a? String
      raise ArgumentError, "The input must be in a string form."
    end

    unless shift.is_a? Integer
      raise ArgumentError, "The shift input must be in an integer form."
    end
  end
  # binding.pry
end


# puts CaesarCipher.new("HellO", 2)
# puts CaesarCipher.encrypt
