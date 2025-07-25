love.window.setTitle("Chapter 14 - Game: Shoot the enemy")

function love.load()
    Object = require "classic"

    -- Main player
    require "player"
    player = Player()

    -- Moving enemy
    require "enemy"
    enemy = Enemy()
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)
end

function love.draw()
    player:draw()
    enemy:draw()
end
