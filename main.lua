function love.keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
   	end
end

function love.load()
	love.window.setTitle("Must Dash, Moustache!")
	love.window.setMode(1280, 720)
	love.window.setFullscreen(true, "exclusive")

	player = {}
	player.image = love.graphics.newImage("moustache.png")
end

function love.draw()
	if player.frame == 1 then
		player.frame = 0
	else
		player.frame = 1
	end

	player.quad = love.graphics.newQuad((player.frame * 100), 0, 100, 100, player.image:getDimensions())
	
	love.graphics.draw(player.image, player.quad)
	love.timer.sleep(0.1) 
end
