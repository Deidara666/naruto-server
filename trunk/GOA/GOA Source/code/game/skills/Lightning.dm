skill
	lightning
		chidori
			id = CHIDORI
			name = "Lightning: Chidori"
			icon_state = "chidori"
			default_chakra_cost = 400
			default_cooldown = 90
			default_seal_time = 5



			Use(mob/human/user)
				viewers(user) << output("[user]: Lightning: Chidori!", "combat_output")
				user.overlays+='icons/chidori.dmi'

				var/mob/human/etarget = user.MainTarget()
				user.stunned=100
				if(!etarget)
					user.stunned=0
					user.usemove=1
					sleep(10)
					if(!user.usemove)
						return
					var/ei=7
					while(!etarget && ei>0)
						for(var/mob/human/o in get_step(user,user.dir))
							if(!o.ko&&!o.protected)
								etarget=o
						ei--
						walk(user,user.dir)
						sleep(1)
						walk(user,0)

					if(etarget)
						var/result=Roll_Against(user.rfx+user.rfxbuff-user.rfxneg,etarget.rfx+etarget.rfxbuff-etarget.rfxneg,70)
						if(result>=5)
							user.combat("[user] Critically hit [etarget] with the Chidori")
							etarget.combat("[user] Critically hit [etarget] with the Chidori")
							etarget.Wound(rand(20,50),1,user)
							etarget.Dec_Stam(rand(1200,2000),1,user)

						if(result==4||result==3)
							user.combat("[user] Managed to partially hit [etarget] with the Chidori")
							etarget.combat("[user] Managed to partially hit [etarget] with the Chidori")
							etarget.Wound(rand(10,20),1,user)
							etarget.Dec_Stam(rand(300,500),1,user)

						if(result>=3)
							spawn()ChidoriFX(user)
							etarget.move_stun=50
							spawn()Blood2(etarget,user)
							spawn()etarget.Hostile(user)
							spawn()user.Taijutsu(etarget)
						if(result<3)
							user.combat("You Missed!!!")
							if(!user.icon_state)
								flick("hurt",user)
					user.overlays-='icons/chidori.dmi'
				else if(etarget)
					user.usemove=1
					spawn(20)
						user.overlays-='icons/chidori.dmi'
					sleep(20)
					etarget = user.MainTarget()
					var/inrange=(etarget in oview(user, 10))
					user.stunned=0

					if(etarget && user.usemove==1 && inrange)
						var/result=Roll_Against(user.rfx+user.rfxbuff-user.rfxneg,etarget.rfx+etarget.rfxbuff-etarget.rfxneg,70)
						if(result>=5)
							user.combat("[user] Critically hit [etarget] with the Chidori")
							etarget.combat("[user] Critically hit [etarget] with the Chidori")
							etarget.Wound(rand(5,20),1,user)

							etarget.Dec_Stam(rand(1500,2500),1,user)

						if(result==4||result==3)
							user.combat("[user] Managed to partially hit [etarget] with the Chidori")
							etarget.combat("[user] Managed to partially hit [etarget] with the Chidori")
							etarget.Wound(rand(2,5),1,user)
							etarget.Dec_Stam(rand(1200,2000),1,user)
						if(result<3)
							user.combat("[user] Partially Missed [etarget] with the Chidori,[etarget] is damaged by the electricity!")
							etarget.combat("[user] Partially Missed [etarget] with the Chidori,[etarget] is damaged by the electricity!")
							etarget.Dec_Stam(rand(750,1500),1,user)

						if(user.AppearMyDir(etarget))
							if(result>=3)
								spawn()ChidoriFX(user)
								etarget.move_stun=50
								spawn()Blood2(etarget,user)
								spawn()etarget.Hostile(user)
								spawn()user.Taijutsu(etarget)
							if(result<3)
								user.combat("You Missed!!!")
								if(!user.icon_state)
									flick("hurt",user)




		chidori_spear
			id = CHIDORI_SPEAR
			name = "Lightning: Chidori Spear"
			icon_state = "raton_sword_form_assasination_technique"
			default_chakra_cost = 350
			default_cooldown = 150
			face_nearest = 1



			Use(mob/human/user)
				viewers(user) << output("[user]: Lightning: Chidori Spear!", "combat_output")

				user.stunned=10

				user.overlays+='icons/ratonswordoverlay.dmi'
				sleep(5)

				var/obj/trailmaker/o=new/obj/trailmaker/Raton_Sword()
				var/mob/result=Trail_Straight_Projectile(user.x,user.y,user.z,user.dir,o,14,user)
				if(result)
					spawn(50)
						del(o)
					result.Dec_Stam(rand(1500,4300),1,user)
					spawn()result.Wound(rand(10,20),1,user)
					spawn()Blood2(result,user)
					spawn()result.Hostile(user)
					result.move_stun=50
					spawn(50)
						user.stunned=0
						user.overlays-='icons/ratonswordoverlay.dmi'
				else
					user.stunned=0
					user.overlays-='icons/ratonswordoverlay.dmi'




		chidori_current
			id = CHIDORI_CURRENT
			name = "Lightning: Chidori Current"
			icon_state = "chidori_nagashi"
			default_chakra_cost = 100
			default_cooldown = 20
			face_nearest = 1



			Use(mob/human/user)
				viewers(user) << output("[user]: Lightning: Chidori Current!", "combat_output")

				user.icon_state="Seal"
				user.stunned=5

				var/conmult = user.ControlDamageMultiplier()

				if(!user.waterlogged)
					spawn()
						spawn()Electricity(user.x+1,user.y,user.z,30)
						spawn()Electricity(user.x-1,user.y,user.z,30)
						spawn()Electricity(user.x,user.y+1,user.z,30)
						spawn()Electricity(user.x,user.y-1,user.z,30)
						spawn()Electricity(user.x+1,user.y+1,user.z,30)
						spawn()Electricity(user.x-1,user.y+1,user.z,30)
						spawn()Electricity(user.x+1,user.y-1,user.z,30)
						spawn()Electricity(user.x-1,user.y-1,user.z,30)
					spawn()AOExk(user.x,user.y,user.z,1,(500+150*conmult),30,user,0,1.5,1)
					Electricity(user.x,user.y,user.z,30)
				else
					for(var/turf/x in oview(2))
						spawn()Electricity(x.x,x.y,x.z,30)
					spawn()AOExk(user.x,user.y,user.z,2,(500+150*conmult),30,user,0,1.5,1)
					Electricity(user.x,user.y,user.z,30)

				user.stunned=0
				user.icon_state=""




		chidori_needles
			id = CHIDORI_NEEDLES
			name = "Lightning: Chidori Needles"
			icon_state = "chidorisenbon"
			default_chakra_cost = 200
			default_cooldown = 30
			face_nearest = 1



			Use(mob/human/user)
				viewers(user) << output("[user]: Lightning: Chidori Needles!", "combat_output")
				var/eicon='icons/chidorisenbon.dmi'
				var/estate=""

				if(!user.icon_state)
					user.icon_state="Throw1"
					user.overlays+='icons/raitonhand.dmi'
					spawn(20)
						user.icon_state=""
						user.overlays-='icons/raitonhand.dmi'
				var/mob/human/player/etarget = user.NearestTarget()
				if(etarget)
					user.dir = angle2dir_cardinal(get_real_angle(user, etarget))

				var/angle
				var/speed = 32
				var/spread = 9
				if(etarget) angle = get_real_angle(user, etarget)
				else angle = dir2angle(user.dir)

				var/damage = 100+50*user.ControlDamageMultiplier()

				spawn() advancedprojectile_angle(eicon, estate, usr, speed, angle+spread*2, distance=10, damage=damage, wounds=1, daze=15)
				spawn() advancedprojectile_angle(eicon, estate, usr, speed, angle+spread, distance=10, damage=damage, wounds=1, daze=15)
				spawn() advancedprojectile_angle(eicon, estate, usr, speed, angle, distance=10, damage=damage, wounds=1, daze=15)
				spawn() advancedprojectile_angle(eicon, estate, usr, speed, angle-spread, distance=10, damage=damage, wounds=1, daze=15)
				spawn() advancedprojectile_angle(eicon, estate, usr, speed, angle-spread*2, distance=10, damage=damage, wounds=1, daze=15)
				//advancedprojectile_ramped(i,estate,mob/efrom,xvel,yvel,distance,damage,wnd,vel,pwn,daze,radius)//daze as percent/100

				/*if(user.dir==NORTH)
					spawn()advancedprojectile_ramped(eicon,estate,user,25,32,10,(400+200*conmult),1,85,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,16,32,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,0,32,10,(400+200*conmult),1,100,1,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-16,32,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-25,32,10,(400+200*conmult),1,85,0,15)
				if(user.dir==SOUTH)
					spawn()advancedprojectile_ramped(eicon,estate,user,25,-32,10,(400+200*conmult),1,85,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,16,-32,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,0,-32,10,(400+200*conmult),1,100,1,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-16,-32,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-25,-32,10,(400+200*conmult),1,85,0,15)
				if(user.dir==EAST)
					spawn()advancedprojectile_ramped(eicon,estate,user,32,25,10,(400+200*conmult),1,85,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,32,16,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,32,0,10,(400+200*conmult),1,100,1,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,32,-16,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,32,-25,10,(400+200*conmult),1,85,0,15)
				if(user.dir==WEST)
					spawn()advancedprojectile_ramped(eicon,estate,user,-32,25,10,(400+200*conmult),1,85,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-32,16,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-32,0,10,(400+200*conmult),1,100,1,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-32,-16,10,(400+200*conmult),1,90,0,15)
					spawn()advancedprojectile_ramped(eicon,estate,user,-32,-25,10,(400+200*conmult),1,85,0,15)*/
