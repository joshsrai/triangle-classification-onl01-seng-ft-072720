class Triangle
  def initialize(a,side2,side3)
    @a = a
    @side2 = side2
    @side3 = side3
  end

  def kind()
    if (@a <= 0) || (@side2 <= 0) || (@side3 <= 0)
      raise TriangleError
    elsif (@a+@side2 <= @side3) || (@a+@side3 <= @side2) || (@side2+@side3 <= @a)
      raise TriangleError
    else
      if (@a == @side2) && (@side2 == @side3)
        :equilateral
      elsif (@a == @side2) || (@side2 == @side3) || (@a == @side3)
        :isosceles
      elsif (@a != @side2) && (@side2 != @side3) && (@a != @side3)
        :scalene
      end
    end

  end

class TriangleError < StandardError
  
end
end