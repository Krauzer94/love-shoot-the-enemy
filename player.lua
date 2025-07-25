Player = Object:extend()

function Player:new()
    -- Shooting player
    self.image = love.graphics.newImage("images/panda.png")

    -- Scalling factor
    self.scale = 0.25

    -- Apply new scaling
    self.width = self.image:getWidth() * self.scale
    self.height = self.image:getHeight() * self.scale

    -- Player movement
    self.x = 300
    self.y = 20
    self.speed = 500
end

function Player:update(dt)
    -- Movement animation
    if love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    end
end

function Player:draw()
    -- On-screen rendering
    love.graphics.draw(self.image, self.x, self.y, 0, self.scale, self.scale)
end
