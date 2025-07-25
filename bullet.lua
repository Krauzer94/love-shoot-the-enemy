Bullet = Object:extend()

function Bullet:new(x, y)
    -- Player bullets
    self.image = love.graphics.newImage("images/bullet.png")

    -- Bullet movement
    self.x = x
    self.y = y
    self.speed = 700

    -- Scalling factor
    self.scale = 0.25

    -- Apply new scaling
    self.width = self.image:getWidth() * self.scale
    self.height = self.image:getHeight() * self.scale
end

function Bullet:update(dt)
    self.y = self.y + self.speed * dt
end

function Bullet:draw()
    love.graphics.draw(self.image, self.x, self.y, 0, self.scale, self.scale)
end
