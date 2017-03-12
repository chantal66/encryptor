class Encryptor
  def cipher
    { 'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r',
      'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w',
      'k' => 'x', 'l' => 'y', 'm' => 'z', 'n' => 'a', 'o' => 'b',
      'p' => 'c', 'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k', 'y' => 'l', 'z' => 'm'
}
  end
  def encrypt_letter(letter)
    lowercase_letter = letter.downcase #step 1 convert every input into lower case
    cipher[lowercase_letter] #step 2 cipher the letter 
  end
  def encrypt(string)
    # 1. Cut the input string into letters
    letters = string.split("")
    # 2. Encrypt those letters one at a time, gathering the results
    results = []
    letters.collect do |letter|
      results << encrypt_letter(letter)
    end  
    # 3. Join the results back together in one string
    results.join
  end
  def decrypt_letter(letter)
    cipher[letter]
  end
  def decrypt(string)
    letters = string.split('')
    results_decrypted = []
    letters.collect do |letter|
      results_decrypted << decrypt_letter(letter)
    end  
    results_decrypted.join
  end
end

e = Encryptor.new
p e.encrypt("Hello")
p e.decrypt("uryyb")