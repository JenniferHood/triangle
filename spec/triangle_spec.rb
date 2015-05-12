require('rspec')
require('triangle')

describe(Triangle) do
  describe('#equilateral?') do
    it('program returns false if it is not an equilateral') do
      test_triangle = Triangle.new(15, 30, 30)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it('program returns true if all sides of the triangle are equal') do
      test_triangle = Triangle.new(30, 30, 30)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

describe('#isosceles') do
   it('program returns false if it is not an isosceles') do
    test_triangle = Triangle.new(15, 13, 10)
     expect(test_triangle.isosceles?()).to(eq(false))
    end

    it('program returns true if two of the three sides are equal') do
      test_triangle = Triangle.new(15, 15, 10)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

describe('#scalene') do
   it('program returns false if at least two sides are equal') do
     test_triangle = Triangle.new(10, 10, 5)
     expect(test_triangle.scalene?()).to(eq(false))
    end

    it('program returns true if none of the sides are  equal') do
      test_triangle = Triangle.new(5, 8, 12)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

describe('#no_triangle') do
    it('program returns false if it is a triangle') do
      test_triangle = Triangle.new(25, 25, 20)
      expect(test_triangle.no_triangle?()).to(eq(false))
    end

    it('program returns true if the sides do not equal a triangle shape') do
      test_triangle = Triangle.new(10, 55, 3)
      expect(test_triangle.no_triangle?()).to(eq(true))
    end
  end
end
