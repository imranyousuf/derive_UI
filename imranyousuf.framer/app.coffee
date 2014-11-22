# Welcome to Framer




# Learn how to prototype: http://framerjs.com/learn
# Drop an image on the device, or import a design from Sketch or Photoshop

final = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/final.jpg"

interest = new Layer x:0, y:0, width:750, height:1334, image:"images/Interest.jpg"

rightmark = new Layer x:625, y:210, width:100, height:100, image:"images/rightmarkUnrighted.png"
rightmarkrighted = new Layer x:625, y:210, width:100, height:100, image:"images/rightmarkrighted.png"
rightmark2 = new Layer x:625, y:350, width:100, height:100, image:"images/rightmarkUnrighted.png"
rightmarkrighted2 = new Layer x:625, y:350, width:100, height:100, image:"images/rightmarkrighted.png"
rightmark3 = new Layer x:625, y:510, width:100, height:100, image:"images/rightmarkUnrighted.png"
rightmarkrighted3 = new Layer x:625, y:510, width:100, height:100, image:"images/rightmarkrighted.png"
rightmark4 = new Layer x:625, y:670, width:100, height:100, image:"images/rightmarkUnrighted.png"
rightmarkrighted4 = new Layer x:625, y:670, width:100, height:100, image:"images/rightmarkrighted.png"
rightmark5 = new Layer x:625, y:850, width:100, height:100, image:"images/rightmarkUnrighted.png"
rightmarkrighted5 = new Layer x:625, y:850, width:100, height:100, image:"images/rightmarkrighted.png"
rightmark6 = new Layer x:625, y:1050, width:100, height:100, image:"images/rightmarkUnrighted.png"
rightmarkrighted6 = new Layer x:625, y:1050, width:100, height:100, image:"images/rightmarkrighted.png"


rightmarkrighted.scale = 0
rightmarkrighted2.scale = 0
rightmarkrighted3.scale = 0
rightmarkrighted4.scale = 0
rightmarkrighted5.scale = 0
rightmarkrighted6.scale = 0

# We want the rightmark to scale down when the user initiallyclicks or touches to provide feedback 
rightmark.on Events.TouchStart, ->
	rightmark.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

rightmark2.on Events.TouchStart, ->
	rightmark2.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

rightmark3.on Events.TouchStart, ->
	rightmark3.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

rightmark4.on Events.TouchStart, ->
	rightmark4.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

rightmark5.on Events.TouchStart, ->
	rightmark5.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

rightmark6.on Events.TouchStart, ->
	rightmark6.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"


		
# When the click or touch ends, we want to swap the rightmark and scale back up to 1. We set rightmarkrighted to the current scale of rightmark (this makes sure they're always in sync) and then immediately set the scale of rightmark to 0. We then call animateStop() on rightmark, in case the spring is still oscillating, then set rightmark's scale to 0 and finally animate rightmarkrighted back to the proper scale.
rightmark.on Events.TouchEnd, ->
	rightmarkrighted.scale = rightmark.scale
	rightmark.animateStop()
	rightmark.scale = 0
	rightmarkrighted.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"

rightmark2.on Events.TouchEnd, ->
	rightmarkrighted2.scale = rightmark2.scale
	rightmark2.animateStop()
	rightmark2.scale = 0
	rightmarkrighted2.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
rightmark3.on Events.TouchEnd, ->
	rightmarkrighted3.scale = rightmark3.scale
	rightmark3.animateStop()
	rightmark3.scale = 0
	rightmarkrighted3.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"

rightmark4.on Events.TouchEnd, ->
	rightmarkrighted4.scale = rightmark4.scale
	rightmark4.animateStop()
	rightmark4.scale = 0
	rightmarkrighted4.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
rightmark5.on Events.TouchEnd, ->
	rightmarkrighted5.scale = rightmark4.scale
	rightmark5.animateStop()
	rightmark5.scale = 0
	rightmarkrighted5.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"

rightmark6.on Events.TouchEnd, ->
	rightmarkrighted6.scale = rightmark4.scale
	rightmark6.animateStop()
	rightmark6.scale = 0
	rightmarkrighted6.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"

		
# We also want to be able to toggle the selection state of the rightmark, so we apply the same events with the opposite effects to rightmarkrighted
rightmarkrighted.on Events.TouchStart, ->
	rightmarkrighted.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
rightmarkrighted.on Events.TouchEnd, ->
	rightmark.scale = rightmarkrighted.scale
	rightmarkrighted.animateStop()
	rightmarkrighted.scale = 0
	rightmark.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
	
rightmarkrighted2.on Events.TouchStart, ->
	rightmarkrighted2.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
rightmarkrighted2.on Events.TouchEnd, ->
	rightmark2.scale = rightmarkrighted2.scale
	rightmarkrighted2.animateStop()
	rightmarkrighted2.scale = 0
	rightmark2.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
rightmarkrighted3.on Events.TouchStart, ->
	rightmarkrighted3.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
rightmarkrighted3.on Events.TouchEnd, ->
	rightmark3.scale = rightmarkrighted3.scale
	rightmarkrighted3.animateStop()
	rightmarkrighted3.scale = 0
	rightmark3.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
rightmarkrighted4.on Events.TouchStart, ->
	rightmarkrighted.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
rightmarkrighted4.on Events.TouchEnd, ->
	rightmark4.scale = rightmarkrighted4.scale
	rightmarkrighted4.animateStop()
	rightmarkrighted4.scale = 0
	rightmark4.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
rightmarkrighted5.on Events.TouchStart, ->
	rightmarkrighted.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
rightmarkrighted5.on Events.TouchEnd, ->
	rightmark5.scale = rightmarkrighted5.scale
	rightmarkrighted5.animateStop()
	rightmarkrighted5.scale = 0
	rightmark5.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
rightmarkrighted6.on Events.TouchStart, ->
	rightmarkrighted.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
rightmarkrighted6.on Events.TouchEnd, ->
	rightmark6.scale = rightmarkrighted4.scale
	rightmarkrighted6.animateStop()
	rightmarkrighted6.scale = 0
	rightmark6.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
	

#############################################################################
time = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/time.jpg"


letgo= new Layer x:0, y:0, width:750, height:1334, image:"images/photo.png"

checkmark = new Layer x:625, y:250, width:100, height:100, image:"images/checkmarkUnchecked.png"
checkmarkChecked = new Layer x:625, y:250, width:100, height:100, image:"images/checkmarkChecked.png"
checkmark2 = new Layer x:625, y:500, width:100, height:100, image:"images/checkmarkUnchecked.png"
checkmarkChecked2 = new Layer x:625, y:500, width:100, height:100, image:"images/checkmarkChecked.png"
checkmark3 = new Layer x:625, y:725, width:100, height:100, image:"images/checkmarkUnchecked.png"
checkmarkChecked3 = new Layer x:625, y:725, width:100, height:100, image:"images/checkmarkChecked.png"
checkmark4 = new Layer x:625, y:950, width:100, height:100, image:"images/checkmarkUnchecked.png"
checkmarkChecked4 = new Layer x:625, y:950, width:100, height:100, image:"images/checkmarkChecked.png"


checkmarkChecked.scale = 0
checkmarkChecked2.scale = 0
checkmarkChecked3.scale = 0
checkmarkChecked4.scale = 0

# We want the checkmark to scale down when the user initiallyclicks or touches to provide feedback 
checkmark.on Events.TouchStart, ->
	checkmark.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

checkmark2.on Events.TouchStart, ->
	checkmark2.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

checkmark3.on Events.TouchStart, ->
	checkmark3.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

checkmark4.on Events.TouchStart, ->
	checkmark4.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"

		
# When the click or touch ends, we want to swap the checkmark and scale back up to 1. We set checkmarkChecked to the current scale of checkmark (this makes sure they're always in sync) and then immediately set the scale of checkmark to 0. We then call animateStop() on checkmark, in case the spring is still oscillating, then set checkmark's scale to 0 and finally animate checkmarkChecked back to the proper scale.
checkmark.on Events.TouchEnd, ->
	checkmarkChecked.scale = checkmark.scale
	checkmark.animateStop()
	checkmark.scale = 0
	checkmarkChecked.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"

checkmark2.on Events.TouchEnd, ->
	checkmarkChecked2.scale = checkmark2.scale
	checkmark2.animateStop()
	checkmark2.scale = 0
	checkmarkChecked2.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
checkmark3.on Events.TouchEnd, ->
	checkmarkChecked3.scale = checkmark3.scale
	checkmark3.animateStop()
	checkmark3.scale = 0
	checkmarkChecked3.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"

checkmark4.on Events.TouchEnd, ->
	checkmarkChecked4.scale = checkmark4.scale
	checkmark4.animateStop()
	checkmark4.scale = 0
	checkmarkChecked4.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
# We also want to be able to toggle the selection state of the checkmark, so we apply the same events with the opposite effects to checkmarkChecked
checkmarkChecked.on Events.TouchStart, ->
	checkmarkChecked.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
checkmarkChecked.on Events.TouchEnd, ->
	checkmark.scale = checkmarkChecked.scale
	checkmarkChecked.animateStop()
	checkmarkChecked.scale = 0
	checkmark.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
	
checkmarkChecked2.on Events.TouchStart, ->
	checkmarkChecked2.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
checkmarkChecked2.on Events.TouchEnd, ->
	checkmark2.scale = checkmarkChecked2.scale
	checkmarkChecked2.animateStop()
	checkmarkChecked2.scale = 0
	checkmark2.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
checkmarkChecked3.on Events.TouchStart, ->
	checkmarkChecked3.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
checkmarkChecked3.on Events.TouchEnd, ->
	checkmark3.scale = checkmarkChecked3.scale
	checkmarkChecked3.animateStop()
	checkmarkChecked3.scale = 0
	checkmark3.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
checkmarkChecked4.on Events.TouchStart, ->
	checkmarkChecked.animate
		properties:
			scale: .8
		curve: "spring(200,15,0)"
		
checkmarkChecked4.on Events.TouchEnd, ->
	checkmark4.scale = checkmarkChecked4.scale
	checkmarkChecked4.animateStop()
	checkmarkChecked4.scale = 0
	checkmark4.animate
		properties:
			scale: 1
		curve: "spring(200,15,0)"
		
		
######################################################################
food = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/food.jpg"
	
stuff = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/Stuff.jpg"
	
homepage = new Layer 
	x:0, y:0, width:750, height:1334, image:"images/homepagef.jpg"



# Define a set of states with names (the original state is 'default')
homepage.states.add
	second: {scale:0.0}
	
stuff.states.add
	second: {scale:0.0}

food.states.add
	second: {scale:0.0}

letgo.states.add
	second: {scale:0.0}



homepage.states.animationOptions =
	curve: "spring(200,15,0)"
	
stuff.states.animationOptions =
	curve: "spring(200,15,0)"

food.states.animationOptions =
	curve: "spring(200,15,0)"

letgo.states.animationOptions =
	curve: "spring(200,15,0)"
	
final.states.animationOptions =
	curve: "spring(200,15,0)"





	


# On a click, go to the next state
homepage.on Events.Click, ->
	homepage.states.next()
	
stuff.on Events.Click, ->
	stuff.states.next()

food.on Events.Click, ->
	food.states.next()
	
final.on Events.Click, ->
	stuff.states.next()
	

	
letgo.on Events.Click, ->
	letgo.scale=0
	checkmark.scale=0
	checkmark2.scale=0
	checkmark3.scale=0
	checkmark4.scale=0
	checkmarkChecked3.animateStop()
	checkmarkChecked3.scale = 0
	curve: "spring(200,15,0)"
	
	checkmarkChecked2.animateStop()
	checkmarkChecked2.scale = 0
	curve: "spring(200,15,0)"
	
	checkmarkChecked4.animateStop()
	checkmarkChecked4.scale = 0
	curve: "spring(200,15,0)"
	
	checkmarkChecked.animateStop()
	checkmarkChecked.scale = 0
	curve: "spring(200,15,0)"

time.on Events.Click, ->
	time.scale=0
	
interest.on Events.Click, ->
	interest.scale=0
	rightmark.scale = 0
	rightmark2.scale = 0
	rightmark3.scale = 0
	rightmark4.scale = 0
	rightmark5.scale = 0
	rightmark6.scale = 0

	rightmarkrighted.animateStop()
	rightmarkrighted.scale = 0
	curve: "spring(200,15,0)"

	rightmarkrighted2.animateStop()
	rightmarkrighted2.scale = 0
	curve: "spring(200,15,0)"
	
	rightmarkrighted3.animateStop()
	rightmarkrighted3.scale = 0
	curve: "spring(200,15,0)"

	rightmarkrighted4.animateStop()
	rightmarkrighted4.scale = 0
	curve: "spring(200,15,0)"
	
	rightmarkrighted5.animateStop()
	rightmarkrighted5.scale = 0
	curve: "spring(200,15,0)"
	
	rightmarkrighted6.animateStop()
	rightmarkrighted6.scale = 0
	curve: "spring(200,15,0)"











