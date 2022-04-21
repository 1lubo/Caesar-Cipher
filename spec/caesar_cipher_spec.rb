
require '../caesar_cipher.rb'

describe 'Caesar Cipher' do
    
    let(:cipher_result5) { caesar_cipher("What a string!", 5)}
    let(:cipher_result10) { caesar_cipher("amv", 10)}
    let(:cipher_result0) { caesar_cipher("What a string!", 0)}
    let(:cipher_character_lower) { caesar_cipher("w", 5) }
    let(:cipher_character_upper) { caesar_cipher("W", 5) }
            
        it "returns a string" do
            expect(cipher_result5).to be_a String
        end  
        
        it "returns a string of the same length as input string" do
            input_length = "What a string!".length
            result_length = cipher_result5.length

            expect(input_length).to eq result_length
        end    

    
        it "does keep the same case (uppercase)" do
            expect((cipher_character_upper).match? /[[:upper:]]/).to be true
        end

        it "does keep the same case (lowercase)" do
            expect((cipher_character_lower).match? /[[:lower:]]/).to be true
        end
   
        it "shift by 0 will return the same string" do
            expect(cipher_result0).to eq "What a string!"
        end

        it "shift by 10 will return a character which is 10 to the right from the original character (wrapping around 'z' as necessary" do
            expect(cipher_result10).to eq "kwf"
        end

end