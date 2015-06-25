AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")

include("shared.lua")
include("player.lua")

RoundinProgress = false


function GM:PlayerInitialSpawn( ply )
	print("Player: " .. ply:Nick() .. ", has spawned.")
	ply:SetModel("models/player/group01/male_07.mdl")
	ply:SetTeam( 0 ) 
end

function GM:PlayerSetModel ( ply )
	ply:SetModel("models/player/group01/male_07.mdl")
end

function GM:PlayerSpawn( ply )
	timer.Create("CountPly", 5, 1, function() hook.Call("CheckStartRound") end )
end

function CheckStartRound()
	local Players = player.GetAll()
	if table.Count(Players) >= 2 and RoundinProgress == false then hook.Call("StartRound") 
	else return end
end

function StartRound()

end