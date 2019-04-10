# string = "wxyz!"
# chiffrement_key = 2

def caesar_cipher (string, chiffrement_key)

# acsii_split = string.split(//).map!{ |a| a == " " ? a.ord : (a.ord + chiffrement_key) }

  # We verify if the chiffrement_key is valid (26 number in the alphabet)
  if chiffrement_key >= 0 && chiffrement_key <= 26

    # Split all character of the string in an array and convert to ASCII number
    ascii_split = string.split(//).map!{ |a| a.ord }

    ascii_change_with_key = ascii_split.map! do |ascii_number|

      # true if the character is a small letter
      if ascii_number <= 122 && 97 <= ascii_number
        ascii_number = ascii_number + chiffrement_key

        # Verify if the number is higher than "z". If true, it start again from "a"
        if ascii_number > 122
          ascii_number = (ascii_number - 122) + (97 - 1)
        else
          ascii_number = ascii_number
        end

      # true if the character is a capital letter
      elsif ascii_number <= 90 && 65 <= ascii_number
        ascii_number = ascii_number + chiffrement_key

        # Verify if the number is higher than "Z". If true, it start again from "A"
        if ascii_number > 90
          ascii_number = (ascii_number - 90) + (65 - 1)
        else
          ascii_number = ascii_number
        end

      else
        # Doen't change if it's an other character
        ascii_number = ascii_number
      end
    end

    # return the array with ASCII convertion to letter and joint all the letter together
    return ascii_change_with_key.map!{ |b| b.chr }.join

  else
    return "It's not an int, the number is too high or the number is to low (0 to 26 is require)!!"
  end
end

#
# caesar_cipher(string, chiffrement_key)
