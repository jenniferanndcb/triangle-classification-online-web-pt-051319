class Triangle
  
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
  end 
  
  def kind 
    case 
      when a == b && a == c 
        :equilateral
      when a == b || a == c ||b == c
        :isosceles 
      when a != b && a != c && b != c 
        :scalene 
    end 
      
    if (a + b <= c) || (b + c <= a) || (a + c <= b) || a == 0 && b == 0 && c == 0 
      raise TriangleError
    end 
  
  end 
  
  
  class TriangleError < StandardError 
    
  end 
  
end
