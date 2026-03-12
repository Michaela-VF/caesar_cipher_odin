# frozen_string_literal: true

# Encapsulated the logic into a class object for good code best practices.
class CaesarCipher
  # LOGIC:
  # create an alphabet variable
  # iterate through the characters of the string one at the time,
  # check if the character is in the array of the alphabet
  # and if it is in the alphabet then I substitute the index of the alphabet's letter
  # to the index of the letter that shifts according to the `shift factor`
  # which will be an integer number passed as the second argument
  # on 'caesar_cipher' method, the first argument would be the string to be deciphered.
  # This will require the creationof an array of all the alphabetical characters.

  def caesar_cipher(string, shift_factor)
    string.bytes # [num1, num2, ...]
          .map { |num| num + shift_factor } # [num3, num4, ...]
          .map(&:chr) # ["letter3", "letter4", ...]
          .join
  end
end
