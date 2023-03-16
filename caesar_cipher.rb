require 'pry-byebug'
  #  binding-pry
  # Define a method that takes in two values, one for the code you want to re-arrange, the other for the amount you want to shift to the right
  # Split the string into characters and then convert them into ASCII associated code with .ord method
  # Shift the numbers with the amount provided by the second paramter
  # Convert the numbers back into characters and join them together
  # Re-add the spaces to the characters 
  # Return the translated string
  #65 - 90
  #97 - 122

  def caesar_cipher(phrase, shift)
    char_array = phrase.split("")

    conversion = char_array.map do |char|
      char = char.ord 
      case char
        when 1..64
          char.chr

        when 65..90
          if (char+shift > 90)
          char = (64 + (char+shift - 90)).chr
          else
          (char += shift).chr
          end

        when 97..122
          if (char+shift > 122)
            char = (96 + (char+shift - 122)).chr
          else
          (char += shift).chr
          end

        else
          puts "Error"
      end
    end
    caesared = conversion.join
  end

  puts caesar_cipher("What a string!", 5)

