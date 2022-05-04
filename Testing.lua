local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window  = Library.CreateLib("Pop it trading v2 made by romlnwza007#3770", "Serpent")

local Tab     = Window:NewTab("Main Scripts")

local Section = Tab:NewSection("Buy NFTS")

local Section = Tab:NewSection("Click the Tab to open and Close")

Section:NewToggle("fast Attack"  , "fastattack", function(value)

spawn(function()

   game:GetService("RunService").RenderStepped:Connect(function()

    pcall(function()

        if _G.FastAttack then

            local Combat = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework)

            local Cemara = require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework.CameraShaker)

            Cemara.CameraShakeInstance.CameraShakeState = {FadingIn = 3, FadingOut = 2, Sustained = 0, Inactive = 1}

            Combat.activeController.timeToNextAttack = 0

            Combat.activeController.hitboxMagnitude = 120

            Combat.activeController.increment = 3

        end

    end)

end) 

end)

spawn(function()

   game:GetService("RunService").RenderStepped:Connect(function()

    pcall(function()

        if _G.FastAttack then

            game:GetService'VirtualUser':CaptureController()

            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))

        end

    end)

end) 

end)
