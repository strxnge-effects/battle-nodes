io.stdout:setvbuf("no")

-- require "nodes"
local component = require "lib/badr"
local button = require "lib/button"
local label = require "lib/label"

love.graphics.setNewFont("fonts/LinLibertine_R.otf", 16)

local menu

function love.load()
    love.graphics.setBackgroundColor({ 1, 1, 1 })
    local clicks = 0
    menu = component { column = true, gap = 10 }
        + label "battle nodes"
        + button {
            text = "new game",
            width = 200,
            onHover = function()
                print "mouse entered"
                return function()
                    print("mouse exited")
                end
            end
        }
        + button { text = "settings", width = 200 }
        + button { text = "credits", width = 200 }
        + button { text = "quit", width = 200, onClick = function() love.event.quit() end }
        -- + button {
        --     text = "Clicked: 0",
        --     width = 200,
        --     onClick = function(self)
        --         clicks = clicks + 1
        --         self.text = "Clicked: " .. clicks
        --     end
        -- }
        -- + button {
        --     text = "Click to remove",
        --     onClick = function(self)
        --         self.parent = self.parent - self
        --         love.mouse.setCursor()
        --     end
        -- }

    menu:updatePosition(
        love.graphics.getWidth() * 0.5 - menu.width * 0.5,
        love.graphics.getHeight() * 0.5 - menu.height * 0.5
    )
end

function love.draw()
    menu:draw()
end

function love.update()
    menu:update()
end
