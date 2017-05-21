class Triangle
    attr_accessor :sides # write code here


    def initialize (fir, sec, third) 
      @sides = []
      @sides[0] = fir
      @sides[1] = sec
      @sides[2] = third
    end

    def kind
      if @sides.any? {|side| side <= 0}
        raise TriangleError  
      elsif @sides[0] + @sides[1] <= @sides[2] ||  @sides[0] + @sides[2] <= @sides[1] || @sides[1] + @sides[2] <= @sides[0] 
        raise TriangleError
      elsif @sides[1] == @sides[0] && @sides[0] == @sides[2]
        @kind = :equilateral
      elsif @sides[1] == @sides[0] || @sides[0] == @sides[2] || @sides[1] == @sides[2]
        @kind = :isosceles
      else
        @kind = :scalene
      end
    end

end

class TriangleError < StandardError

end