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
						usr<<"Voc� deve ser pelo menos um Genin fazer uma miss�o rank C."
					else
						if(usr.gotscroll <= 0)
							usr.gotscroll = 0
							usr<<"<b><font face=verdana>H� um pergaminho localizado na Vila Oculta da Neve,  derrote os guardas eo traga para mim que havera uma recompensa .."
						else
							if(usr.Yen>=100000)
								alert("Voc� ja tem o maximo de Yen que pode carregar.")
								return
							else
								usr.Yen += 1300
								usr<<"<b><font face=verdana>Bom trabalho, agora vou enviar o pergaminho para o Senhor Hokage."
								usr.gotscroll = 0
								usr.cmission+=1
								for(var/obj/Hidden_Scroll/HS in usr.contents)
									del(HS)
				if("B")
					if(usr.rank == "Student"||usr.rank=="Genin")
						usr<<"Esta miss�o � apenas para Chuunin ou superior."
						return
					else if(usr.roguekills<=0)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr<<"Objetivo:O Ninja Patife saiu de nossa aldeia, por favor, buscar e elimin�-los."
								return
							else
								return
					else
						if(usr.Yen>=100000)
							alert("Voc� ja tem o maximo de Yen que pode carregar.")
							return
						else
							usr<<"Senhor Hokage est� satisfeito com seu desempenho, um bom trabalho."
							usr.bmission+=1
							if(usr.Yen>=100000)
								usr<<"Voc� ja tem o maximo de Yen que pode carregar."
								return
							else
								usr.Yen+=usr.roguekills*2000
								usr.roguekills=0
								return
				if("A")
					if(usr.rank == "Student"||usr.rank=="Genin")
						usr<<"Esta miss�o � apenas para Chuunin ou superior."
						return
					else if(usr.Mnin >=400&&usr.Mgen>=400&&usr.Mtai>=400)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(3,4,11)
								usr.inmission=1
								usr<<"Objectivo: encontrar e recuperar informa��es que Orochimaru conseguiu! "
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmission)
									usr<<"Lamentamos, mas voc� correu fora do tempo, por favor, volte e tente novamente na pr�xima vez!"
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
						usr<<"Esta miss�o � apenas para Jounin ou superior."
						return
					else if(usr.Mnin >=750&&usr.Mgen>=750&&usr.Mtai>=750)
						switch(input("You will embark on your mission, Sure you wish to leave so soon?", text) in list ("Yes","No"))
							if("Yes")
								usr.loc=locate(64,39,21)
								usr.inmission=1
								usr<<"Objetivo: Derrote Dosu Kinuta, um ninja do som."
								usr.verbs += new /mob/mission/verb/Escape()
								sleep(6000)
								if(usr&&usr.inmission)
									usr<<"Lamentamos, mas voc� correu fora do tempo, por favor, volte e tente novamente na pr�xima vez!"
									usr.inmission=0
									usr.loc=locate(6,58,20)
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									usr.verbs -= new /mob/mission/verb/Escape()
									return
							else
								return
					else
						usr<<"Voc� n�o est� qualificado(a) para esta miss�o, precisa treinar mais um pouco."
						return

mob/mission/verb/Escape()
	set category="Mission"
	usr.loc=locate(6,58,20)
	usr.inmission=0
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()
	usr.verbs -= new /mob/mission/verb/Escape()