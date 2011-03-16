mob/Lee
	verb
		Lotus()
			set category = "Jutsus"
			set name = "Lotus"
			if(usr.firing||usr.Kaiten||usr.rank=="Student")
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return


			else
				if(usr.rank=="Genin"||usr.rank=="Chuunin")switch(input("What gate would you like to open?","Gates") in list ("Initial Gate","Heal Gate","Life Gate","Harm Gate","Limit Gate","Close gates","Close Window"))
					if("Initial Gate")
						if(usr.gate1 == 0)
							if(usr.lotusS >= 10)
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
								usr.lotusS += 1
								usr.health -= usr.health/2
								usr.tai = usr.tai*1.2
								usr.Move_Delay =Speed2
								usr.overlays += 'lotus.dmi'
								usr.Ldamage()
								usr.gate1 = 1
								return
							else
								usr.random = rand (1,4)
								if(usr.random == 1||usr.random == 4)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
									usr.lotusS += 1
									usr.health -= usr.health/2
									usr.tai = usr.tai*1.1
									usr.Move_Delay =Speed2
									usr.overlays += 'lotus.dmi'
									usr.Ldamage()
									usr.gate1 = 1
									return
								else
									usr<<"<B><font color = blue>You failed to open the limit gate!"
									usr.gate8 = 0
									usr.gate7 = 0
									usr.gate6 = 0
									usr.gate5 = 0
									usr.gate4 = 0
									usr.gate3 = 0
									usr.gate2 = 0
									usr.gate1 = 0
									usr.tai = usr.Mtai
									usr.overlays -= 'lotus.dmi'
									usr.Move_Delay = Speed1
									return
						else
							view()<<"The initial gate is already open!"
					if("Heal Gate")
						if(usr.gate2 == 0)
							if(usr.gate1 == 1)
								if(usr.lotusS >= 17)
									usr.lotusS += 1
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
									usr.health = usr.maxhealth
									usr.tai = usr.tai*1.3
									usr.Move_Delay =Speed3
									usr.overlays += 'lotus.dmi'
									usr.Ldamage()
									usr.gate2 = 1
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
										usr.lotusS += 1
										usr.health = usr.maxhealth
										usr.tai = usr.tai*1.2
										usr.Move_Delay =Speed3
										usr.overlays += 'lotus.dmi'
										usr.Ldamage()
										usr.gate2 = 1
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The Initial gate must be open first!"
						else
							view()<<"The Heal gate is already open!"
					if("Life Gate")
						if(usr.gate3 == 0)
							if(usr.gate2 == 1)
								if(usr.lotusS >= 27)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
									usr.lotusS += 1
									usr.tai = usr.tai*1.4
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =Speed3
									usr.gate3 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
										usr.lotusS += 1
										usr.tai = usr.tai*1.3
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =Speed3
										usr.gate3 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The heal gate must be open first!"
						else
							view()<<"The Life gate is already open!"
					if("Harm Gate")
						if(usr.gate4 == 0)
							if(usr.gate3 == 1)
								if(usr.lotusS >= 40)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.5
									usr.health += 1000
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =Speed4
									usr.gate4 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,6)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.4
										usr.health += 1000
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =Speed4
										usr.gate4 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.overlays -= 'lotus.dmi'
										usr.tai = usr.Mtai
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the life gate."
						else
							view()<<"The Harm gate is already open!"
					if("Limit Gate")
						if(usr.gate5 == 0)
							if(usr.gate4 == 1)
								if(usr.lotusS >= 65)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*2.5
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =Speed5
									usr.gate5 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*2
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =Speed5
										usr.gate5 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the harm gate."
						else
							usr<<"The Limit gate is already open!"
							return
					if("Close gates")
						usr<<"<B><font color = blue>You stop using lotus."
						usr.gate5 = 0
						usr.gate4 = 0
						usr.gate3 = 0
						usr.gate2 = 0
						usr.gate1 = 0
						usr.tai = usr.Mtai
						usr.Move_Delay = Speed1
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
				if(usr.rank=="Jounin"||usr.rank=="Hunter-Nin"||usr.rank=="Missing"||usr.rank=="Sannin"||usr.rank=="ANBU"||usr.rank=="Kage")switch(input("What gate would you like to open?","Gates") in list ("Initial Gate","Heal Gate","Life Gate","Harm Gate","Limit Gate","View Gate","Wonder Gate","Death Gate","Close gates","Close Window"))
					if("Initial Gate")
						if(usr.gate1 == 0)
							if(usr.lotusS >= 10)
								view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
								usr.lotusS += 1
								usr.health -= usr.health/2
								usr.tai = usr.Mtai*1.3
								usr.Move_Delay =Speed2
								usr.overlays += 'lotus.dmi'
								usr.Ldamage()
								usr.gate1 = 1
								return
							else
								usr.random = rand (1,4)
								if(usr.random == 1||usr.random == 4)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Initial gate open!!"
									usr.lotusS += 1
									usr.health -= usr.health/2
									usr.tai = usr.Mtai*1.2
									usr.Move_Delay =Speed2
									usr.overlays += 'lotus.dmi'
									usr.Ldamage()
									usr.gate1 = 1
									return
								else
									usr<<"<B><font color = blue>You failed to open the initial gate!"
									usr.gate8 = 0
									usr.gate7 = 0
									usr.gate6 = 0
									usr.gate5 = 0
									usr.gate4 = 0
									usr.gate3 = 0
									usr.gate2 = 0
									usr.gate1 = 0
									usr.tai = usr.Mtai
									usr.overlays -= 'lotus.dmi'
									usr.Move_Delay = Speed1
									return
						else
							view()<<"The initial gate is already open!"
					if("Heal Gate")
						if(usr.gate2 == 0)
							if(usr.gate1 == 1)
								if(usr.lotusS >= 17)
									usr.lotusS += 1
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
									usr.health = usr.maxhealth
									usr.tai = usr.Mtai*1.4
									usr.Move_Delay =Speed3
									usr.overlays += 'lotus.dmi'
									usr.Ldamage()
									usr.gate2 = 1
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Heal gate open!!"
										usr.lotusS += 1
										usr.health = usr.maxhealth
										usr.tai = usr.Mtai*1.3
										usr.Move_Delay =Speed3
										usr.overlays += 'lotus.dmi'
										usr.Ldamage()
										usr.gate2 = 1
										return
									else
										usr<<"<B><font color = blue>You failed to open the heal gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The Initial gate must be open first!"
						else
							view()<<"The Heal gate is already open!"
					if("Life Gate")
						if(usr.gate3 == 0)
							if(usr.gate2 == 1)
								if(usr.lotusS >= 27)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*1.5
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =Speed3
									usr.gate3 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,4)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Life gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.4
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =Speed3
										usr.gate3 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the life gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								view()<<"The heal gate must be open first!"
						else
							view()<<"The Life gate is already open!"
					if("Harm Gate")
						if(usr.gate4 == 0)
							if(usr.gate3 == 1)
								if(usr.lotusS >= 40)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*2
									usr.health += 1000
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =Speed4
									usr.gate4 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,6)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Harm gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*1.5
										usr.health += 1000
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =Speed4
										usr.gate4 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the harm gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.overlays -= 'lotus.dmi'
										usr.tai = usr.Mtai
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the life gate."
						else
							view()<<"The Harm gate is already open!"
					if("Limit Gate")
						if(usr.gate5 == 0)
							if(usr.gate4 == 1)
								if(usr.lotusS >= 65)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*2.2
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =Speed5
									usr.gate5 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Limit gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*2
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =Speed5
										usr.gate5 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the limit gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the harm gate."
						else
							usr<<"The Limit gate is already open!"
							return
					if("View Gate")
						if(usr.gate6 == 0)
							if(usr.gate5 == 1)
								if(usr.lotusS >= 100)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: View gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*2.4
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =0
									usr.gate6 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: View gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*2.3
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =0
										usr.gate7 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the View gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = Speed1
										return
							else
								usr<<"You must first open the limit gate."
						else
							usr<<"The View gate is already open!"
							return
					if("Wonder Gate")
						if(usr.gate7 == 0)
							if(usr.gate6 == 1)
								if(usr.lotusS >= 300)
									view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wonder gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*3
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =0
									usr.gate7 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Wonder gate open!!"
										usr.lotusS += 1
										usr.tai = usr.Mtai*2.5
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =0
										usr.gate7 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the Wonder gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = 0
										return
							else
								usr<<"You must first open the view gate."
						else
							usr<<"The Wonder gate is already open!"
							return
					if("Death Gate")
						if(usr.gate8 == 0)
							if(usr.gate7 == 1)
								if(usr.lotusS >= 500)
									view()<<"<B><font color = blue>Death gate open!!"
									usr.lotusS += 1
									usr.tai = usr.Mtai*4
									usr.overlays += 'lotus.dmi'
									usr.Move_Delay =0
									usr.gate8 = 1
									usr.Ldamage()
									return
								else
									usr.random = rand (1,10)
									if(usr.random == 1||usr.random == 4)
										view()<<"<B><font color = blue>Death gate open!!"
										usr.lotusS += 1
										usr.tai = usr.tai*3.5
										usr.overlays += 'lotus.dmi'
										usr.Move_Delay =0
										usr.gate8 = 1
										usr.Ldamage()
										return
									else
										usr<<"<B><font color = blue>You failed to open the Death gate!"
										usr.gate8 = 0
										usr.gate7 = 0
										usr.gate6 = 0
										usr.gate5 = 0
										usr.gate4 = 0
										usr.gate3 = 0
										usr.gate2 = 0
										usr.gate1 = 0
										usr.tai = usr.Mtai
										usr.overlays -= 'lotus.dmi'
										usr.Move_Delay = 0
										return
							else
								usr<<"You must first open the view gate."
						else
							usr<<"The Wonder gate is already open!"
							return
					if("Close gates")
						usr<<"<B><font color = blue>You stop using lotus."
						usr.gate8 = 0
						usr.gate7 = 0
						usr.gate6 = 0
						usr.gate5 = 0
						usr.gate4 = 0
						usr.gate3 = 0
						usr.gate2 = 0
						usr.gate1 = 0
						usr.tai = usr.Mtai
						usr.Move_Delay = Speed1
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
						usr.overlays -= 'lotus.dmi'
mob
	proc
		lotusoff()
			if(src.health <= 1)
				src.gate8 = 0
				src.gate7 = 0
				src.gate6 = 0
				src.gate5 = 0
				src.gate4 = 0
				src.gate3 = 0
				src.gate2 = 0
				src.gate1 = 0
				src.tai = usr.Mtai
				src.overlays -= 'lotus.dmi'
				src.Move_Delay = 2
mob
	proc
		Ldamage()
			if(src.gate2 == 1&&src.gate3 == 0)
				src.health -= 100
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
					usr.dead=1
				sleep(30)
				src.Ldamage()
			if(src.gate3 == 1&&src.gate4 == 0)
				src.health -= 151
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
					usr.dead=1
				sleep(25)
				src.Ldamage()
			if(src.gate4 == 1&&src.gate5 == 0)
				src.health -= 200
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
					usr.dead=1
				sleep(22)
				src.Ldamage()
			if(src.gate5 == 1)
				src.health -= 250
				src.lotusoff()
				if(src.health<=0)
					src.Death(usr)
					usr.dead=1
				sleep(20)
				src.Ldamage()
			else
				return

mob/Lee
	verb
		KonohaReppu(mob/M in get_step(src,src.dir))
			set category = "Jutsus"
			set name = "Konoha Renpuu"
			if (M.inspike)
				return
			if(usr.firing)
				return
			if (M.sphere)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(M.drunk&&M.NonClan)
				view()<<"[M] dodges [usr]'s attack"
				return
			if (M.Kaiten)
				usr <<"You attack [M] but their kaiten reflects the damage back at you."
				M <<"You reflect [usr]'s attack causing them to hurt themself."
				usr.health -= 10
				if(src.health<=0)
					usr.Death(M)
					usr.dead=1
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if (M.ingat == 1)
				usr << "Your attack bounces off of [M] because they are in gatsuuga.."
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#6495ed>K</FONT><FONT COLOR=#549cf0>o</FONT><FONT COLOR=#43a3f3>n</FONT><FONT COLOR=#33abf7>o</FONT><FONT COLOR=#22b2fa>h</FONT><FONT COLOR=#11b9fd>a</FONT><FONT COLOR=#00bfff> </FONT><FONT COLOR=#20c3fb>R</FONT><FONT COLOR=#3fc8f6>e</FONT><FONT COLOR=#5fccf1>n</FONT><FONT COLOR=#7ed0eb>p</FONT><FONT COLOR=#9ed4e6>u</FONT><FONT COLOR=#bdd9e1>u</FONT><FONT COLOR=#dcdcdc>!</FONT>"
				var/damage=usr.tai*5
				M.health -= damage
				M.Death(usr)
				usr.firing=1
				view()<<"[M] takes [damage] damage from Konoha Renpuu!"
				if(M)
					if(usr.dir==NORTH)
						M.dir=NORTH
					if(usr.dir==WEST)
						M.dir=WEST
					if(usr.dir==SOUTH)
						M.dir=SOUTH
					if(usr.dir==EAST)
						M.dir=EAST
				sleep(14)
				usr.firing=0
mob/Lee
	verb
		KonohaGenkurikiSenpuu()
			set category = "Jutsus"
			set name = "Konoha Genuriki Senpuu"
			for(var/mob/M in oview(1,usr))
				if(M.drunk&&M.NonClan)
					view()<<"[M] dodges [usr]'s attack"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.froze)
					usr<<"Your frozen"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.Frozen)
					usr<<"Your frozen"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.captured)
					usr<<"Your captured"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if (M.inspike)
					usr<<"Your attack bounces off of [usr]!"
					return
				if(usr.firing)
					return
				if (M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage/2
					if(usr.health<=0)
						usr.Death(M)
						return
					else
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage
						if(usr.health<=0)
							usr.Death(M)

						return
				if (M.ingat)
					usr << "Your attack bounces off of [M] because they are in gatsuuga.."
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				else
					var/damage = round(usr.tai*14)
					usr.firing=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: Konoha Genuriki Senpuu!"
					view()<<"[M] has been hit by Konoha Genuriki Senpuu for [damage] Damage"
					M.health -= damage
					if(M.health<=0)
						M.Death(usr)
					step(M,usr.dir)
					sleep(20)
					usr.firing=0
mob/Lee
	verb
		KonohaSenpuu()
			set category = "Jutsus"
			set name = "Konoha Senpuu"
			for(var/mob/M in oview(1,usr))
				if(M.drunk&&M.NonClan)
					view()<<"[M] dodges [usr]'s attack"
					return
				if(usr.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(M.PK==0)
					usr<<"NON PK ZONE!"
					return
				if(usr.froze)
					usr<<"Your frozen"
					return
				if(usr.Frozen)
					usr<<"Your frozen"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.captured)
					usr<<"Your captured"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if (M.sphere)
					usr<<"Your attack bounces off of the sand!"
					return
				if (M.inspike)
					usr<<"Your attack bounces off of [usr]!"
					return
				if(usr.firing)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					Death(usr)
					return
				if (M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage/2
					if(usr.health<=0)
						usr.Death(M)
						return
					else
						usr <<"You attack [M] but their kaiten hakkeshou reflects the damage back at you."
						M <<"You reflect [usr]'s attack causing them to hurt themselfs."
						usr.health -= damage
						if(usr.health<=0)
							usr.Death(M)

						return
				if (M.ingat)
					usr << "Your attack bounces off of [M] because they are in gatsuuga.."
					return
				else
					var/damage = round(usr.tai*8)
					usr.firing=1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#6495ed>K</FONT><FONT COLOR=#549cf0>o</FONT><FONT COLOR=#43a3f3>n</FONT><FONT COLOR=#33abf7>o</FONT><FONT COLOR=#22b2fa>h</FONT><FONT COLOR=#11b9fd>a</FONT><FONT COLOR=#00bfff> </FONT><FONT COLOR=#20c3fb>S</FONT><FONT COLOR=#3fc8f6>e</FONT><FONT COLOR=#5fccf1>n</FONT><FONT COLOR=#7ed0eb>p</FONT><FONT COLOR=#9ed4e6>u</FONT><FONT COLOR=#bdd9e1>u</FONT><FONT COLOR=#dcdcdc>!</FONT>"
					view()<<"[M] has been hit by Konoha Senpuu for [damage] Damage"
					M.health -= damage
					if(M.health<=0)
						M.Death(usr)
					step(M,usr.dir)
					sleep(20)
					usr.firing=0


mob/Lee
	verb
		OmoteRenge(mob/M in get_step(src,SOUTH))
			set name = "Omote Renge"
			set category = "Jutsus"
			if (M.ingat||M.intank)
				return
			if (M.sphere)
				return
			if (M.Kaiten)
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.health <= 1000)
				usr<<"Not enough health"
				return
			if (M.inspike)
				return
			if(!usr.gate1)
				usr<<"You must have atleast the first gate open to use this!"
				return
			if(usr.firing)
				return
			else
				usr.firing=1
				var/damage = round(usr.tai*20)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#90ee90>O</FONT><FONT COLOR=#9ae69a>m</FONT><FONT COLOR=#a4dca4>o</FONT><FONT COLOR=#add3ad>t</FONT><FONT COLOR=#b7c9b7>e</FONT><FONT COLOR=#c0c0c0> </FONT><FONT COLOR=#b2b2b2>R</FONT><FONT COLOR=#a4a4a4>e</FONT><FONT COLOR=#959595>n</FONT><FONT COLOR=#868686>g</FONT><FONT COLOR=#787878>e</FONT><FONT COLOR=#696969>!</FONT>"
				usr.health -= usr.health/3
				usr.overlays += 'omote.dmi'
				if(M)
					usr.loc=M.loc
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					sleep(3)
					step(M,SOUTH)
					usr.loc=M.loc
					M.health -= damage
				view()<<"[usr] does [damage] to [M] with Omote Renge!"
				M.Death(usr)
				usr.Move_Delay = 5
				usr.overlays-='omote.dmi'
				usr.overlays-='omote.dmi'
				usr.overlays-='omote.dmi'
				usr.overlays-='omote.dmi'
				usr.firing=0
				sleep(90)
				usr.Move_Delay = 0
obj
	Uratrail
		icon = 'ura.dmi'
		icon_state = "trail"
		density = 1
mob/Lee
	verb
		UraRenge(mob/M in get_step(src,SOUTH))
			set name = "Ura Renge"
			set category = "Jutsus"
			if (M.ingat||M.intank)
				return
			if (M.inspike)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.health <= 1000)
				usr<<"Not enough health"
				return
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.Frozen)
				usr<<"Your frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if (M.sphere == 1)
				return
			if (M.Kaiten == 1)
				return
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			if(usr.gate3 == 0)
				usr<<"You must have atleast the third gate open to use this!"
			if(usr.firing)
				return
			else
				usr.firing=1
				usr.health -= usr.health/7
				var/obj/Uratrail/K = new /obj/Uratrail
				var/obj/Uratrail/F = new /obj/Uratrail
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f5f5f5>U</FONT><FONT COLOR=#e9e9e9>r</FONT><FONT COLOR=#dbdbdb>a</FONT><FONT COLOR=#cecece> </FONT><FONT COLOR=#c0c0c0>R</FONT><FONT COLOR=#cbc6be>e</FONT><FONT COLOR=#d6ccbb>n</FONT><FONT COLOR=#e0d3b9>g</FONT><FONT COLOR=#ebd9b6>e</FONT><FONT COLOR=#f5deb3>!</FONT>"
				var/damage = round(usr.tai*14)
				M.overlays += 'ura.dmi'
				M.health -= damage
				view()<<"[usr] does [damage] to [M] with Ura Renge!"
				usr.firing=0
				if(M.health <= 0)
					M.Death(usr)
					if(M)
						M.overlays -= 'ura.dmi'
						usr.firing=0
					return
				M.Death(usr)
				sleep(3)
				K.loc = M.loc
				step(M,SOUTH)
				sleep(3)
				F.loc = M.loc
				step(M,SOUTH)
				sleep(5)
				del(F)
				step(M,NORTH)
				sleep(5)
				del(K)
				step(M,NORTH)
				if(M)
					M.health -= damage
					view()<<"[usr] does [damage] to [M] with Ura Renge!"
					M.Death(usr)
					M.overlays -= 'ura.dmi'
				usr.Move_Delay = 5
				usr.firing=0
				sleep(90)
				usr.Move_Delay=0
