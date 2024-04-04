# https://leetcode.com/problems/unique-morse-code-words/description/
#
def unique_morse_representations(words)
    morse_code = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    morse_hash = {}

    morse_words = {}
    
    ("a".."z").each_with_index do |alp, i|
      morse_hash[alp] = morse_code[i]
    end

    # p morse_hash
    words.each do |w|
      code = ""
      w.each_byte do |i|
        code << morse_hash[i.chr]
      end
      morse_words[code] = ""
    end
    morse_words.keys.length
end

unique_morse_representations(["gin", "zen", "gig", "msg"])
