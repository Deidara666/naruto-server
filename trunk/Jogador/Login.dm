
mob/proc/menu()
	if(src.menus)
		src.client.screen+=new/obj/tchat
		src.client.screen+=new/obj/trest
		src.client.screen+=new/obj/tsave

mob/proc/menu2()
	if(!src.menus)
		src.client.screen=null

turf/Customization
	density = 1
	icon = 'naruto1.bmp'

turf/Full
	density = 1
	layer = 999
	icon = 'naruto_itachi.bmp'

turf/START
	density = 1
	layer = 999
	Click()
		usr.loc = locate(52,37,30)
		var/name = input("","Nome") as text|null
		if(length(name) < 2)
			alert("Seu nome tem que ter mais de 2 (duas) letras!")
			return
		if(length(name) > 20)
			alert("Seu nome não pode ter mais de 20 (vinte) letras!")
			return
		usr.name="[html_encode(name)]"
		usr.loc = locate(94,94,20)

turf/Load
	density = 1
	layer = 999
	Click()
		usr.LoadPlayer()

turf/Quit
	density = 1
	layer = 999
	Click()
		del(usr)

client
	Del()
		..()
		del(mob)
		return ..()


