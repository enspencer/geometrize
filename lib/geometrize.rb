module Geometry
  class Triangle
    attr_accessor :a, :b, :c

    def initialize(a,b,c)
      @a = a.to_f
      @b = b.to_f
      @c = c.to_f
      @area = area
    end

    def perimeter
      @a + @b + @c
    end

    def area
      perim = (self.perimeter/2)
      num_to_sqrt = perim * (perim - @a) * (perim - @b) * (perim - @c)
      Math.sqrt(num_to_sqrt)
    end

    #Checking for Triangle Validity a + b > c

    def validity 
      if @a + @b <= @c || @c + @a <= @b || @b + @c <=@a
        puts "These is not a valid triangle"
        return false 
      else 
        return true 
      end 
    end 

    # def angles
    #   array = []
    #   angle1 = Math.cos(@c / @b)
    #   angle2 = Math.sin(@b / @c)
    #   angle3 = 180 - angle2 - angle1
    # end
    
  end #end class triangle

  class Rectangle
    attr_accessor :d, :e

    def initialize(d,e)
      @d = d
      @e = e
    end

    def perimeter
      2 * (@d + @e)
    end

    def area
      @d * @e
    end

  end #end class rect

  class Circle
    attr_accessor :f

    def initialize(f)
      @f = f
    end

    def circumference
      2 * 3.14159265359 * @f
    end

    def area
      3.14159265359 * @f * @f
    end

  end #end class circle


end #end of module