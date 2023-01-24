require_relative '../lib/02_caesar_cipher'

describe "the caesar cipher? method" do
      it "should return the caesar cipher of the string 'What a string!' with an offset of 5" do
        expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
      end
end
