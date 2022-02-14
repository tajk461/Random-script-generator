local warning = "-- Random script generator, tema093"
-- Hi, if you arent sure about safety of this pretty plugin, you can check everything. And dont spam my discord, you stupid.
local RandomScriptGeneratorToolbar = plugin:CreateToolbar("Random script generator")
local RandomScriptCreateButton = RandomScriptGeneratorToolbar:CreateButton("CreateRandomScript", "", "rbxassetid://4458901886")

local RandomScripts = {
	[[
	--too lazy
	
	
	
	function calculatus(number1, number2)
	
	getfenv(1).result = number1 + number2
	
	end
	
	calculatus(math.random(100, 6326), math.random(1, 8736))
	print(result) -- we added number1 to number2 and returned this value by a delicate way
	
	]],
	"for i = 1, 10 do\nprint('Hello world is '.. i)\nend",
	"print('Random script activated!')",
	[[
	while wait(3) do
		print("Ima random script! Catch me and delete me!")
	end
	]],
	'error("Your random script caused an error!")',
	[[
	local part = Instance.new('Part', workspace)
	part.Anchored = true
	part.Position += Vector3.new(0, 10, 0)
	coroutine.wrap(function()
	while wait() do
		part.CFrame = part.CFrame * CFrame.Angles(math.rad(1), 0, 0)
		
	end
	end)()
	
	
	
	]]
	
}
RandomScriptCreateButton.Click:Connect(function()
	local RandomScript = Instance.new("Script", game:GetService("ServerScriptService"))
	RandomScript.Source = RandomScripts[math.random(1, #RandomScripts)]
	local Source = RandomScript.Source
	local TableSource = string.split(Source, "\n")
	table.insert(TableSource, 1, warning)
	local ReadySource = table.concat(TableSource, "\n")
	RandomScript.Source = ReadySource
	local secret = math.random(1,#game:GetChildren())
	if math.random(1, 1000) == 1000 then
	local module = Instance.new("ModuleScript", game:GetService("ServerScriptService"))
	module.Source = "--[[\nYou found a secret! Now you can contact me in my discord to speak about things\nmarakesh#1737\n]]--"
	end	
end)