Enemy = Object:extend()

function Enemy:new()
    -- Moving enemy
    self.image = love.graphics.newImage("images/snake.png")

    -- Scalling factor
    self.scale = 0.25

    -- Apply new scaling
    self.width = self.image:getWidth() * self.scale
    self.height = self.image:getHeight() * self.scale

    -- Enemy movement
    self.x = 325
    self.y = 450
    self.speed = 100
end

function Enemy:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, self.scale, self.scale)
end
