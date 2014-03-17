class Crypt
  def self.encrypt(plain_text, key=rand(26))
    convert_array = (("a".."z").to_a)
    convert_array.push(" ")
    encrypt_array = convert_array.rotate(key)
    plain_array = plain_text.downcase.split("")
    return((plain_array.map.each { |char| encrypt_array[convert_array.index(char)]}).join)
  end

  def self.decrypt(encrypted_text, key=nil)
    if key
      encrypt(encrypted_text, -key)
    else
      (0..25).map.each { |key| encrypt(encrypted_text, -key)}
    end
  end
end