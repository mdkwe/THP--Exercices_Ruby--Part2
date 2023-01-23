require_relative '../lib/01_multiples'

describe "the is_multiple_of_3_or_5? method" do
      it "should return TRUE when an integer is a multiple of 3 or 5" do
        expect(is_multiple_of_3_or_5?(3)).to eq(true)
        expect(is_multiple_of_3_or_5?(5)).to eq(true)
        expect(is_multiple_of_3_or_5?(51)).to eq(true)
        expect(is_multiple_of_3_or_5?(45)).to eq(true)
      end
    
      it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
        # je te laisse écrire ces tests-là
        expect(is_multiple_of_3_or_5?(23)).to eq(false)
        expect(is_multiple_of_3_or_5?(32)).to eq(false)
        expect(is_multiple_of_3_or_5?(19)).to eq(false)
      end
end

describe "sum_of_3_or_5_multiples method" do
      it "should return the sum of all mutiples of 3 and 5 below 11" do
        expect(sum_of_3_or_5_multiples(11)).to eq(33)
      end
    
      it "should return the sum of all mutiples of 3 and 5 below 10" do
            expect(sum_of_3_or_5_multiples(10)).to eq(23)
          end
end