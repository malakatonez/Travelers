# Import file "travel" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/travel@2x")

#Init flow component and start with fisrt screen
flow = new FlowComponent
# flow.showNext(sketch.signIn_register)
# flow.showNext(sketch.dashboard, scroll: false)
flow.showNext(sketch.detail, scroll: false)

#const
# ANIM_TIME = 0.5
# PH_SCALE = 0.7
# PH_Y = 50

#fast references
# email_placeholder = sketch.signIn_emailAddress_placeholder
# password_placeholder = sketch.signIn_password_placeholder 


###############################
# SIGN IN OR REGISTER SCREEN

#Sign in - Ghost button onClick event:
#	- Make invisible register button
#	- Starts animation moving ghost button to bottom
#	- When animation ends makes visible solid button and input fields
# sketch.signIn_buttonGhost.onClick ->
# 	sketch.register_button.visible = false
# 	
# 	animSignin = sketch.signIn_buttonGhost.animate
# 		originX: 0
# 		y: sketch.signIn_buttonSolid.y
# 		options:
# 			time: ANIM_TIME
# 			
# 	animSignin.onAnimationEnd ->
# 		sketch.signInFields.visible = true
# 		sketch.signIn_buttonGhost.visible = false
# 		sketch.signIn_buttonSolid.visible = true
# 		sketch.signIn_linkRegister.visible = true


###############################
# SIGN IN SCREEN

#Sign in - Email placeholder onClick event:
#	- Starts animation moving and scaling placeholder
#	- When animation ends makes visible completed email
# email_placeholder.onClick ->
# 	if (email_placeholder.visible)
# 		animEmailPh = email_placeholder.animate
# 			scale: PH_SCALE
# 			originX: 0
# 			y: email_placeholder.y - PH_Y
# 			options: 
# 				time: ANIM_TIME
# 				
# 		animEmailPh.onAnimationEnd ->
# 			sketch.signIn_emailAddress.visible = true


#Sign in - Password placeholder onClick event:
#	- Starts animation moving and scaling placeholder
#	- When animation ends makes visible completed password
# password_placeholder.onClick ->
# 	if (password_placeholder.visible)
# 		animPasswordPh = password_placeholder.animate
# 			scale: PH_SCALE
# 			originX: 0
# 			y: password_placeholder.y - PH_Y
# 			options: 
# 				time: ANIM_TIME
# 				
# 		animPasswordPh.onAnimationEnd ->
# 			sketch.signIn_password.visible = true
			

#Sign in - Solid sign in button onClick event
#	- Load next screen in flow (app dashboard)
# sketch.signIn_buttonSolid.onClick ->
# 	flow.showNext(sketch.dashboard, scroll: false)
	


###############################
# DASHBOARD SCREEN

#Scroll only wraps "dashboard_scrollable" group
# scrollDashboard = ScrollComponent.wrap(sketch.dashboard_scrollable)
# scrollDashboard.scrollHorizontal = false

#Dashboard - London card onClick event
# sketch.card_london.onClick ->
# 	flow.showNext(sketch.detail, scroll: false)


# Loops example. We don't use because it crashes with simple onClick
# allCards = sketch.cards.children
# for card in allCards
# 	card.onLongPress ->
# 		@animate
# 			scale: 1.1
# 			options:
# 				curve: Bezier.ease
# 				delay: 0
# 				time: 1
# 				
# 	card.onLongPressEnd ->
# 		@animate
# 			scale: 1
# 			options:
# 				curve: Bezier.ease
# 				delay: 0
# 				time: 1


###############################
# DETAIL SCREEN

#Scroll only wraps "detail_scrollable" group
# scrollDetail = ScrollComponent.wrap(sketch.detail_scrollable)
# scrollDetail.scrollHorizontal = false

#Detail - Back to dashboard 
# sketch.detail_back.onClick ->
# 	flow.showPrevious()
	
#Detail - Likes onClick event:
#	 - if likes == 95 and icon is not filled:
#		- Hide 5 and show 6
#		- Show icon fill
#	- if likes == 96 and icon is filled:
#		- Hide 6 and show 5
#		- Hide icon fill
# sketch.detail_likes.onClick ->
# 	if (!sketch.detail_likes_fill.visible)
# 		sketch.detail_likes_fill.visible = true
# 		sketch.detail_likes_5.visible = false
# 		sketch.detail_likes_6.visible = true
# 	else 
# 		sketch.detail_likes_6.visible = false
# 		sketch.detail_likes_5.visible = true
# 		sketch.detail_likes_fill.visible = false