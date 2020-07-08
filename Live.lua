shell.run("label", "set", "Lenny")

os.loadAPI("WorldAPI")
os.loadAPI("MovementAPI")
os.loadAPI("ItemsAPI")

term.clear()

function DrawDisplay()
	term.clear()
	print("Mood: ", "Bad go away dexter")
	if(not (ItemsAPI.health <= 0)) then
		print("Health: ", ItemsAPI.health)
	end
end

function Reset()
	WorldAPI.Reset()
    ItemsAPI.Reset()
end

function Tick()
    ItemsAPI.CheckForItems()
	MovementAPI.DetermineMovement()
	DrawDisplay()
    Reset()
end

while true do
    Tick()
	
	if(ItemsAPI.health <= 0) then
		print("He has killed me, mother")
		break
	end
end

-- To do: Change this to automatically pull from Github. Easier that way to update.