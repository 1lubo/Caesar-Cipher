
def caesar_cipher (string, shift)
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    ciphered_string = []
    lowercase_string = string.downcase

    lowercase_string.each_char do |char|
        
        if !alphabet.include? char
            ciphered_string.push(char)
        else
            index = alphabet.index(char)
            if string[lowercase_string.index(char)] == string[lowercase_string.index(char)].upcase
                ciphered_string.push(alphabet[shift_index(index, shift)].upcase)
            else
                ciphered_string.push(alphabet[shift_index(index, shift)])           
            end
        end
    end

    p ciphered_string.join()
end

def shift_index(index, shift)
    if index > 0  
        if index + shift < 25
            return index + shift
        else
            return (shift - (25 - index)) - 1
        end
    else
        if index + shift > 0
            return index + shift
        else
            return 25 + ((index + shift) + 1)
        end
    end

end


caesar_cipher("What a cipher!", 5)
caesar_cipher("What a cipher!", -5)
