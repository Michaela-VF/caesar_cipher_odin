# frozen_string_literal: true

require 'simplecov'
SimpleCov.start

require_relative '../lib/caesar_cipher'

RSpec.describe CaesarCipher do
  describe '#caesar_cipher' do
    it "deciphers correctly with a `right shift factor` of 2 the string 'apple'" do
      cc = CaesarCipher.new
      expect(cc.caesar_cipher('apple', 2)).to eq('crrng')
    end
    # it "deciphers correctly with a 'right shift factor of 5' the string 'What a string!' into 'Bmfy f xywnsl!'" do
    #     cc = CaesarCipher.new
    #     expect(cc.caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    # end
  end
end
