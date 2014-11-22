# Welcome to Framer

# Learn how to prototype: http://framerjs.com/learn
# Drop an image on the device, or import a design from Sketch or Photoshop

arrived = new Layer 
	x:0, y:0, width:320, height:400, image:"images/arrived.jpg"

telegraph = new Layer 
	x:0, y:0, width:320, height:400, image:"images/maps.jpg"
	
start = new Layer 
	x:0, y:0, width:320, height:400, image:"images/maps4.jpg"
	
home = new Layer 
	x:0, y:0, width:320, height:400, image:"images/watchhome.jpg"

# Define a set of states with names (the original state is 'default')
arrived.states.add
	second: {scale:0.0}
# Set the default animation options
arrived.states.animationOptions =
	curve: "spring(200,15,0)"

# On a click, go to the next state
arrived.on Events.Click, ->
	arrived.states.next()
	
telegraph.states.add
	second: {scale:0.0}
# Set the default animation options
telegraph.states.animationOptions =
	curve: "spring(200,15,0)"

# On a click, go to the next state
telegraph.on Events.Click, ->
	telegraph.states.next()
	
start.states.add
	second: {scale:0.0}
# Set the default animation options
start.states.animationOptions =
	curve: "spring(200,15,0)"

# On a click, go to the next state
start.on Events.Click, ->
	start.states.next()

home.states.add
	second: {scale:0.0}
# Set the default animation options
home.states.animationOptions =
	curve: "spring(200,15,0)"

# On a click, go to the next state
home.on Events.Click, ->
	home.states.next()

	



