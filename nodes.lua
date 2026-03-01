function love.load()
    -- nodesPlayer = {}
    -- nodesEnemy = {}
    -- nodesAlly = {}

    node = {}
    node.x = 100
    node.y = 100
    node.width = 100
    node.height = 100
end

-- function nodes.draw()
    -- draw individual nodes
-- end

function nodes.open(node)
    -- show node info and upgrades

    love.mousepressed(mx, my, node)
end



