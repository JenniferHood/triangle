class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  define_method(:equilateral?) do
   if equilateral = (@side1 == @side2) && (@side2 == @side3)
     true
   else
     false
   end
 end


  define_method(:isosceles?) do
    if isosceles = (@side1 == @side2) && (@side2 != @side3) || (@side1 == @side3) && (@side2 != @side1) || (@side2 == @side3) && (@side1 != @side2)
      true
    else
      false
    end
  end

  define_method(:scalene?) do
     if scalene = (@side1 != @side2) && (@side2 != @side3) && (@side1 != @side3)
       true
     else
       false
     end
   end

  define_method(:no_triangle?) do
    if no_triangle = ((@side1 + @side2) < @side3) || ((@side2 + @side3) < @side1) ||((@side1 + @side3) < @side2)
        true
      else
        false
      end
    end

  define_method(:type) do
      if equilateral?
        "This is an equilateral triangle!"
      elsif isosceles?
        "This is an isosceles triangle!"
      elsif scalene?
        "This is a scalene triangle!"
      elsif no_triangle?
        "This is not a triangle shape!"
      else
      "These dimensions are weird!"
    end
  end
end
