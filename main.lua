love.window.setTitle("Chapter 14 - Game: Shoot the enemy")

function love.load()
    Object = require "classic"

    -- Main player
    require "player"
    player = Player()

    -- Moving enemy
    require "enemy"
    enemy = Enemy()

    -- Shooting bullet
    require "bullet"
    listOfBullets = {}
end

function love.update(dt)
    player:update(dt)
    enemy:update(dt)

    -- Bullet shooting action
    for i, v in ipairs(listOfBullets) do
        v:update(dt)

        -- Check collition
        v:checkCollision(enemy)

        -- Destroy dead bullets
        if v.dead then
            table.remove(listOfBullets, i)
        end
    end
end

function love.draw()
    player:draw()
    enemy:draw()

    -- Bullet shooting action
    for i, v in ipairs(listOfBullets) do
        v:draw()
    end
end

function love.keypressed(key)
    player:keyPressed(key)
end
