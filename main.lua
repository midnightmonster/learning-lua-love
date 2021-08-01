local john = 0

local rectangle = function(left, top, width, height)
  love.graphics.polygon('fill',left,top,left+width,top,left+width,top+height,left,top+height)
end

love.draw = function()
  john = john + 2
  for multiplier = 1, 10 do
    local offset = multiplier * john / 10
    local x = (0+offset) % 1400
    local y = (0+offset) % 1000
    if x > 700 then
      x = 1400 - x
    end 
    if y > 500 then
      y = 1000 - y
    end
    rectangle(x,y,100,100)
  end
end