class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    # you can use unique method or include method
    # if !BRANDS.include?(brand)
    #   BRANDS << brand
    # end
    BRANDS << brand
    BRANDS.uniq! # push the brand in then make a new array and return it
    
    
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end