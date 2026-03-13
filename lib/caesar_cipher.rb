# frozen_string_literal: true

# Encapsulated the logic into a class object for good code best practices.
class CaesarCipher
  # LOGIC:
  # create 2 x alphabet variable for caps and lower cases
  # wrap shift_factor
  # use translate to replace the actual alphabet's letters with the shifted one's
  # this will require a shifted alphabet couple for caps and lower cases
  def caesar_cipher(string, shift_factor)
    lowcase_alphabet = ('a'..'z').to_a.join # "abcdefghijklmnopqrstuvwxyz", to sepparate caps and lower cases from wwrapping over eachother
    caps_alphabet = lowcase_alphabet.upcase # "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    shift_factor_wrap = shift_factor % 26 # to reset shift_factor when is bigger than the alphabet's characters i.e 26
    shifted_lowcase_alphabet = lowcase_alphabet.chars.rotate(shift_factor_wrap).join # to be used as replacement for translate method
    shifted_caps_alphabet = caps_alphabet.chars.rotate(shift_factor_wrap).join # -//-
    string.tr(lowcase_alphabet + caps_alphabet, shifted_lowcase_alphabet + shifted_caps_alphabet) # translate method with the 2 alphabets e.g 'hello'.tr('el', 'ip') #=> "hippo"
  end
end
