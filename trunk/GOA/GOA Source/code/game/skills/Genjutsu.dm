skill
	genjutsu
		temple_of_nirvana
			id = SLEEP_GENJUTSU
			name = "Genjutsu: Temple of Nirvana"
			icon_state = "sleep_genjutsu"
			default_chakra_cost = 250
			default_cooldown = 120



			Use(mob/user)
				user.icon_state = "Seal"
				user.stunned = 5
				spawn(50)
					user.icon_state = ""

				var/mob/human/target = user.MainTarget()
				var/turf/center = user.loc

				if(target)
					center = target.loc

				if(center)
					var/r = limit(1, round((user.int+user.intbuff-user.intneg)/75) + 1, 5)
					var/images[0]
					var/area[0]

					for(var/turf/T in range(center, r))
						images += image('icons/genjutsu2.dmi', T)
						area += T

					for(var/image/I in images)
						world << I

					var/resisted[0]
					var/failed_resist[0]

					var/time = 20
					while(time > 0)
						sleep(1)
						for(var/mob/human/M in range(center, r))
							if(M.isguard && M.skillspassive[21] && !(M in failed_resist))
								var/resist_roll=Roll_Against((user.int+user.intbuff-user.intneg)*(1 + 0.05*user.skillspassive[19]),(M.con+M.conbuff-M.conneg)*(1 + 0.05*(M.skillspassive[21]-1)),100)
								if(resist_roll < 4)
									resisted += M
								else
									failed_resist += M
						--time

					for(var/mob/human/M in range(center, r))
						if(M != user && !(M in resisted))
							M.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
							flick("Knockout", M)
							M.icon_state = "Dead"
							M.asleep = 1
							M.stunned = 20
							spawn()
								while(M && M.stunned>0 && M.asleep)
									sleep(1)
								if(M)
									M.icon_state=""
									M.asleep=0


					for(var/image/I in images)
						del I




		fear
			id = PARALYZE_GENJUTSU
			name = "Genjutsu: Fear"
			icon_state = "paralyse_genjutsu"
			default_chakra_cost = 100
			default_cooldown = 60



			Use(mob/user)
				user.icon_state = "Seal"
				user.stunned = 2
				sleep(20)
				user.icon_state = ""

				user.FilterTargets()
				for(var/mob/human/T in user.targeted_by)
					if(T in oview(user))
						var/image/o = image('icons/genjutsu.dmi' ,T)
						T << o
						user << o
						var/result=Roll_Against((user.int+user.intbuff-user.intneg)*(1 + 0.05*user.skillspassive[19]),(T.int+T.intbuff-T.intneg)*(1 + 0.05*T.skillspassive[19]),100)
						T.FilterTargets()
						if(!(user in T.active_targets))
							--result
						if(T.skillspassive[21] && T.isguard)
							var/resist_roll=Roll_Against((user.int+user.intbuff-user.intneg)*(1 + 0.05*user.skillspassive[19]),(T.con+T.conbuff-T.conneg)*(1 + 0.05*(T.skillspassive[21]-1)),100)
							if(resist_roll < 4)
								result = 1
						if(result >= 6)
							T.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
							T.move_stun = 100
						if(result == 5)
							T.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
							T.move_stun = 80
						if(result == 4)
							T.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
							T.move_stun = 50
						if(result == 3)
							T.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
							T.move_stun = 30
						if(result == 2)
							T.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
							T.move_stun = 10
						spawn()
							while(T && T.move_stun > 0 && T.icon_state != "ko")
								sleep(1)
							del(o)




		darkness
			id = DARKNESS_GENJUTSU
			name = "Genjutsu: Darkness"
			icon_state = "paralyse_genjutsu"
			default_chakra_cost = 800
			default_cooldown = 200



			Use(mob/user)
				user.icon_state="Seal"
				spawn(20)
					user.icon_state=""
				var/mob/human/etarget = user.MainTarget()
				if(etarget)
					var/result=Roll_Against((user.int+user.intbuff-user.intneg)*(1 + 0.05*user.skillspassive[19]),(etarget.int+etarget.intbuff-etarget.intneg)*(1 + 0.05*etarget.skillspassive[19]),80)
					if(etarget.skillspassive[21] &&etarget.isguard)
						var/resist_roll=Roll_Against((user.int+user.intbuff-user.intneg)*(1 + 0.05*user.skillspassive[19]),(etarget.con+etarget.conbuff-etarget.conneg)*(1 + 0.05*(etarget.skillspassive[21]-1)),100)
						if(resist_roll < 4)
							result = 1
					var/image/I = image('icons/shroud.dmi',etarget)
					user<<I

					var/d=0
					if(result>=6)
						d=60
					if(result==5)
						d=30
					if(result==4)
						d=20
					if(result==3)
						d=16
					if(result==2)
						d=10
					if(d > 0)
						etarget.gen_effective_int = user.int+user.intbuff-user.intneg*1 + 0.05*user.skillspassive[19]
						etarget.sight=(BLIND|SEE_SELF|SEE_OBJS)
						spawn(d*10)
							if(etarget) etarget.sight=0

							del(I)
