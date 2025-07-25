love.window.setTitle("Chapter 14 - Game: Shoot the enemy")

function love.load()
    Object = require "classic"

    -- Main player
    require "player"
    player = Player()
end

function love.update(dt)
    player:update(dt)
end

function love.draw()
    player:draw()
end
