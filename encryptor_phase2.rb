# p array_A_to_Z = ('A'..'Z').to_a
# p array_a_to_z = ('a'..'z').to_a
# p array_0_to_9 = (0..9).to_a
# p array_empty_to_z = (' '..'z').to_a

# p array_A_to_Z_rotate = ('A'..'Z').to_a.rotate(1)
# p array_0_to_9_rotate = (0..9).to_a.rotate(5)

# rotation = 13
# characters = ('a'..'z').to_a
# rotated_characters = ('a'..'z').to_a.rotate(13)
# pairs = characters.zip(rotated_characters)
# p Hash[pairs]

# rotation = 13
# characters = (' '..'z').to_a
# rotated_characters = characters.rotate(rotation)
# p Hash[characters.zip(rotated_characters)]

# rotation = 25
# characters = ('A'..'Z').to_a
# rotated_characters = ('A'..'Z').to_a.rotate(25)
# pairs = characters.zip(rotated_characters)
# p Hash[pairs]

# rotation = 14
# characters = (' '..'Z').to_a
# rotated_characters = (' '..'Z').to_a.rotate(14)
# pairs = characters.zip(rotated_characters)
# p Hash[pairs]

class Encryptor
  def cipher(rotation)
    characters = (' '..'z').to_a
    rotated_characters = characters.rotate(rotation)
    Hash[characters.zip(rotated_characters)]
  end


  def encrypt_letter(letter, rotation)
      cipher_for_rotation = cipher(rotation)
      cipher_for_rotation[letter]
  end
  def encrypt(string, rotation)
      letters = string.split("")
     results = []
     letters.collect do |letter|
       results << encrypt_letter(letter, rotation)
     end  
     results.join
  end
  def decrypt_letter(letter, rotation)
     cipher_for_rotation = cipher(rotation -(rotation*2))
     cipher_for_rotation[letter]
  end
  def decrypt(string, rotation)
    letters = string.split('')
    results_decrypted = []
    letters.collect do |letter|
      results_decrypted << decrypt_letter(letter, rotation)
    end  
    results_decrypted.join
  end
end

e = Encryptor.new
p encrypted = e.encrypt("Hello World!",10)
p e.decrypt(encrypted, 10)