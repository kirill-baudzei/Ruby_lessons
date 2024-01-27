require_relative "./rectangle" # из текущей дериктории вызываются файлы с модулями
require_relative "./square"
    
puts Square.area(10) # 100
puts Rectangle.area(10, 5) # 50