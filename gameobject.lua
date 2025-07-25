GameObject = Object:extend()

function GameObject:new(imagePath, x, y)
    -- Image file asset
    self.image = love.graphics.newImage(imagePath)

    -- File size detection
    self.width = self.image:getWidth()
    self.height = self.image:getHeight()

    -- Size and speed
    self.x = x or 0
    self.y = y or 0
    self.speed = speed or 0
end

function GameObject:draw()
    -- On-screen rendering
    love.graphics.draw(self.image, self.x, self.y)
end
