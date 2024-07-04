def roman(s)
  number = 0
  subs = { 'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100, 'XC' => 90, 'L' => 50, 'XL' => 40, 'X' => 10, 'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1 }
  i = 0
  while i < s.length
    if !(n=subs[s[i..i+1]]).nil?
      number += n
      i+=1
    else
      number += subs[s[i]] if(i < s.length)
    end
    i+=1
  end
  number
end
