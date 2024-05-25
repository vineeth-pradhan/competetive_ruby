class Solution
  def add_to_array_form(num, k)
    convert_to_integer_form(num)+k
  end

  private

  def convert_to_integer_form(num)
    i=num.size
    result=0
    while(i > 0)
      result += (num[i-1]*10.pow(num.size-i))
      i-=1
    end
    result
  end
end
