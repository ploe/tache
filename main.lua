function love.keypressed(key, scancode, isrepeat)
	if key == "escape" then
		love.event.quit()
	elseif key == "f" then
		love.window.setFullscreen(false)
	elseif key == "F" then
		love.window.setFullscreen(true, "exclusive")
	elseif key == "space" then
		player.clip = 1
   	end
end

function love.load()
	love.window.setTitle("Must Dash, Moustache!")
	love.window.setMode(1280, 720)
	love.window.setFullscreen(true, "exclusive")

	player = {
		frame = 0,
		clip = 0
	}
	player.image = love.graphics.newImage("moustache.png")
end

function love.draw()
	if player.frame == 1 then
		player.frame = 0
	else
		player.frame = 1
	end

	player.quad = love.graphics.newQuad((player.frame * 100), (player.clip * 100), 100, 100, player.image:getDimensions())
	
	love.graphics.draw(player.image, player.quad)
	love.timer.sleep(0.1) 
end
