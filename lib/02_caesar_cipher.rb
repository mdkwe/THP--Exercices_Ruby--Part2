# DO : créer une méthode caesar_cipher, dans un programme caesar_cipher.rb 
# qui prend en paramètres un string et une clé de chiffrement (nombre de lettres à 
# décaler) pour en sortir le string modifié.

def caesar_cipher(str, key)
      special = ["?","<",",",">","'",",","?","[","]","}","{","=","-",")","(","*","&","^","%","$","#","`","~","{","}"," ","?", "!","@", "#", "&", "$"]
      to_cipher = str.chars
      str_final =[]

      for w in 0..(to_cipher.size() - 1) do
        if special.include?(to_cipher[w])
          # No encryption of special characters
          str_final.append(to_cipher[w])
        elsif to_cipher[w].match?(/[A-Z]/) # case : word is a upercase
           # Encrypt Uppercase letters
          str_final.append(((to_cipher[w].ord + key -  65) % 26 + 65).chr)
        else
          # Encrypt Lowercase letters
          str_final.append(((to_cipher[w].ord + key -  97) % 26 + 97).chr)
        end
      end

      return str_final.join("")
end