mob/var
	tmp/inmission=0
	amission=0
	tmp/roguekills=0
var
	peoplein=0
obj
	Weed
		icon = 'weed.dmi'
		verb
			Pick()
				set src in oview(1)
				var/place = src.loc
				usr<<"<font face=verdana>Voc� pegou uma [src]"
				usr.picked += 1
				src.loc = usr
				spawn(600)
					var/obj/Weed/W = new/obj/Weed
					W.loc = place
obj
	Hidden_Scroll
		icon = 'scroll.dmi'
		icon_state="1"
		verb
			Get()
				set src in oview(1)
				if(usr.gotscroll)
					usr<<"Voc� j� tem isso!"
					return
				var/place = src.loc
				usr<<"<font face=verdana>Voc� pegou o [src]"
				usr.gotscroll = 1
				src.loc = usr
				spawn(600)
					var/obj/Hidden_Scroll/H = new/obj/Hidden_Scroll
					H.loc = place

mob/MissionJounin
	icon = 'Spawn.dmi'
	health = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999
	human = 0
	verb
		Talk()
			set src in oview(3)
			set category ="Mission"
			switch(input("Que tipo de miss�o voc� quer fazer ?", text) in list ("D","C","B","A","S"))
				if("D")
					if(usr.rank == "Student")
						usr<<"Voc� deve ser pelo menos um genin para fazer uma miss�o rank D."
						return
					else
						if(usr.picked <= 0)
							usr.picked = 0
							usr<<"<b><font face=verdana>H� uma grande quantidade de ervas amareladas em torno da vila. Recolha o m�ximo que puder e ser� recompensado."
						else
							if(usr.Yen>=100000)
								alert("Voc� j� tem o maximo de Yen que pode carregar.")
								return
							else
								usr.Yen += usr.picked * 5
								usr.picked = 0
								usr.dmission+=1
								for(var/obj/Weed/W in usr.contents)
									del(W)
				if("C")
					if(usr.rank == "Student")
						usr<<"You must be atleast a Genin to do a C rank mission."
					else
						if(usr.gotscroll <= 0)
							usr.gotscroll = 0
							usr<<"<b><font face=verdana>There is a stolen scroll located in the Hidden Village of Snow, Defeat the guards and bring the scroll back in one piece for a reward."
						else
							if(usr.Yen>=100000)
								alert("You already have as much Yen as you can carry.")
								return
							else
								usr.Yen += 1300
								usr<<"<b><font face=verdana>Good job, I will now send the scroll back to lord Hokage."
								usr.gotscroll = 0
								usr.cmission+=1
								for(var/obj/Hidden_Scroll/HS in usr.contents)
									del(HS)
				if("B")
					if(usr.rank == "Student"||usr.rank=="Genin")
						usr<<"This mission is only for Chuunin or higher"
						return
					else if(usr.roguekills<=0)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr<<"Objective: Rogue Ninja have been terrizing the village, Please seek out and eliminate them."
								return
							else
								return
					else
						if(usr.Yen>=100000)
							alert("You already have as much Yen as you can carry.")
							return
						else
							usr<<"Lord Hokage is pleased with your performance, Good work."
							usr.bmission+=1
							if(usr.Yen>=100000)
								usr<<"You are already carrying as much Yen as you can."
								return
							else
								usr.Yen+=usr.roguekills*2000
								usr.roguekills=0
								return
				if("A")
					if(usr.rank == "Student"||usr.rank=="Genin")
						usr<<"This mission is only for Chuunin or higher"
						return
					else if(usr.Mnin >=400&&usr.Mgen>=400&&usr.Mtai>=400)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(3,4,11)
								usr.inmission=1
								usr<<"Objective: Find Orochimaru and retrieve information!."
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmission)
									usr<<"Sorry, You have run out of time,Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(6,58,20)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								return
				if("S")
					if(usr.rank == "Student"||usr.rank=="Genin"||usr.rank=="Chuunin")
						usr<<"This mission is only for Jounin or higher"
						return
					else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(64,39,21)
								usr.inmission=1
								usr<<"Objective: Defeat Dosu Kinuta."
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmission)
									usr<<"Sorry, You have run out of time,Please return and try again next time!"
									usr.inmission=0
									usr.loc=locate(6,58,20)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								return
					else
						usr<<"You aren't qualified for this mission. Need to train some more."
						return

mob/mission/verb/Escape()
	set category="Mission"
	usr.loc=locate(6,58,20)
	usr.inmission=0
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()