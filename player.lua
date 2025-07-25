Player = GameObject:extend()

function Player:new()
    -- Playable character
    Player.super.new(self, "images/panda.png", 300, 20, 500)
    self.speed = 500
end

function Player:update(dt)
    -- Movement animation
    if love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    end

    -- Screen boundaries
    local window_width = love.graphics.getWidth()

    -- Enforce screen size
    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > window_width then
        self.x = window_width - self.width
    end
end

function Player:draw()
    -- On-screen rendering
    love.graphics.draw(self.image, self.x, self.y, 0)
end

function Player:keyPressed(key)
    -- Bullet shooting action
    if key == "space" then
        table.insert(listOfBullets, Bullet(self.x, self.y))
    end
end
