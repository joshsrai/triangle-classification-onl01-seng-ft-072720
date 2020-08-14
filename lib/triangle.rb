class Triangle
  def initialize(a,b,side3)
    @a = a
    @b = b
    @side3 = side3
  end

  def kind()
    if (@a <= 0) || (@b <= 0) || (@side3 <= 0)
      raise TriangleError
    elsif (@a+@b <= @side3) || (@a+@side3 <= @b) || (@b+@side3 <= @a)
      raise TriangleError
    else
      if (@a == @b) && (@b == @side3)
        :equilateral
      elsif (@a == @b) || (@b == @side3) || (@a == @side3)
        :isosceles
      elsif (@a != @b) && (@b != @side3) && (@a != @side3)
        :scalene
      end
    end

  end

class TriangleError < StandardError
  
end
end