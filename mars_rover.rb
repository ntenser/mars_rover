class Rover

  attr_accessor :x_coordinate, :y_coordinate, :direction
  def initialization(x_coordinate, y_coordinate, direction)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction = direction
  end

  def read_instruction(instructions)
    instructions.each do |i|
      if i == 'R' || i == 'L'
        turn(i)
      elsif
        move
      end
    end
  end


 def move
   case @direction
   when 'N'
     if @y_coordinate + 1 > 9
       puts 'Please turn around'
     elsif
       @y_coordinate += 1
     end

   when 'E'
     if @x_coordinate > + 1 > 9
       puts 'Please turn around'
     elsif
       @x_coordinate += 1
     end

   when 'W'
     if @x_coordinate - 1 < 0
       puts 'Please turn around'
     elsif
       @x_coordinate -= 1
     end

   when 'S'
     if @y_coordinate -1 < 0
       puts 'Please turn around'
     elsif
       @y_coordinate -= 1
     end
  end

 def turn(direct)
   case @direction
   when 'N'
    if direct == 'R'
      @direction = 'E'
    elsif direct =='L'
      @direction = 'W'
    end

    when 'E'
    if direct == 'R'
      @direction = 'S'
    elsif direct =='L'
      @direction = 'N'
    end

    when 'W'
    if direct == 'R'
      @direction = 'N'
    elsif direct =='L'
      @direction = 'S'
    end

    when 'S'
    if direct == 'R'
      @direction = 'E'
    elsif direct =='L'
     @direction = 'W'
    end
  end

   def report
     puts "#{@x_coordinate}, #{@y_coordinate}, #{@direction}"
   end
end
