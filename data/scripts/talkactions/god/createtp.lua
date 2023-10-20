local createTpScript = TalkAction("/tp")

function createTpScript.onSay(player, words, param)    
    if player:getAccountType() < ACCOUNT_TYPE_GOD then        
        return true    
    end
    
    local split = param:split(",")   
    
    if tonumber(split[3]) == nil then        
        player:sendCancelMessage("Insufficient parameters.")        
        return false   
    end 

    local msg = nil   
    for i = 1, #split do        
        split[i] = tonumber(split[i])    
    end 
    
    local direction = {        
        [0] = function(ps) ps.y = ps.y - 1 return ps end,       
        [1] = function(ps) ps.x = ps.x + 1 return ps end,        
        [2] = function(ps) ps.y = ps.y + 1 return ps end,        
        [3] = function(ps) ps.x = ps.x - 1 return ps end    
    }    
    
    local teleporter = direction[player:getDirection()](player:getPosition())    
    
    if isCreature(Tile(teleporter):getTopCreature()) then        
        msg = "You cannot create a teleport on top of a player."    
    end     
    
    if Tile(teleporter):getTopDownItem() then       
        msg = "You cannot create a teleport on top of an item."    
    end 
    
    if not msg then       
        msg = "Teleport created to cordinates: {X: "..split[1].." Y: "..split[2].." Z: "..split[3].."}."        
        -- doCreateTeleport(8254, {x = split[1], y = split[2], z = split[3]}, teleporter)   
        doCreateTeleport(38946, {x = split[1], y = split[2], z = split[3]}, teleporter)   
    end 
    
    player:sendTextMessage(MESSAGE_STATUS_CONSOLE_ORANGE, msg)   
    return false 
end


createTpScript:separator(" ")
createTpScript:register()
