Enemy = GameObject:extend()

function Enemy:new()
    -- Moving enemy
    Enemy.super.new(self, "images/snake.png", 325, 450)
    self.speed = 100
end

function Enemy:update(dt)
    self.x = self.x + self.speed * dt

    -- Screen boundaries
    local window_width = love.graphics.getWidth()

    -- Enforce screen size
    if self.x < 0 then
        self.x = 0
        self.speed = -self.speed
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
        self.speed = -self.speed
    end
end
