-- Script: FPSCamera
-- Ubicación: StarterPlayer > StarterPlayerScripts (LocalScript)

-- Obtenemos los servicios necesarios
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Esperamos a que el jugador local esté listo
local player = Players.LocalPlayer
local camera = workspace.CurrentCamera

-- Función que fuerza la vista en primera persona
local function activarPrimeraPersona()
	-- Al poner min y max en 0, la cámara queda pegada al personaje (FPS)
	player.CameraMinZoomDistance = 0
	player.CameraMaxZoomDistance = 0
end

-- Activamos la primera persona al iniciar
activarPrimeraPersona()

-- RenderStepped se ejecuta cada frame para mantener la vista activa
-- (evita que el jugador pueda hacer zoom hacia afuera con la rueda del mouse)
RunService.RenderStepped:Connect(function()
	activarPrimeraPersona()
end)
