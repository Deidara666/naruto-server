

mob/uchiha
	verb
		Tsukiyomi(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Tsukiyomi"
			if(usr.firing)
				return
			if(M.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(M.froze)
				return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else
				usr.overlays+='Tsukiyomi.dmi'
				sleep(8)
				usr.overlays-='Tsukiyomi.dmi'
				usr.overlays+='tsukiyomistill.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.froze=1
				M<<"Your frozen by [usr]'s Tsukiyomi."
				usr<<"You froze [M] with your Tsukiyomi"
				var/Sleeptime = round(usr.gen -M.gen/2)
				if(Sleeptime <= 1)
					Sleeptime = 1
					M.Frozen=1
					M.firing=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						usr.overlays-='tsukiyomistill.dmi'
						usr.overlays -= 'sharingan.dmi'
						M.move=1
						M<<"You break out of [usr]'s Tsukiyomi."
						usr<<"[M] is free from your Tsukiyomi!"
						M.froze = 0
						M.Frozen=0
						M.firing=0
						sleep(20)
						var/damage = round(usr.gen*3)
						M.health -= damage
						view(usr)<<"[M] has recieved [damage] damage from Tsukiyomi"
						M.firing=0
						if(M.health <=0)
							M.Death(usr)
				else
					M.Frozen=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M<<"You break out of [usr]'s Tsukiyomi."
						usr<<"[M] is free from your Tsukiyomi!"
						usr.overlays-='tsukiyomistill.dmi'
						usr.overlays -= 'sharingan.dmi'
						M.froze = 0
						M.Frozen=0
						sleep(20)
						var/damage = round(usr.gen*3)
						M.health -= damage
						view(usr)<<"[M] recebeu [damage] de dano do Tsukiyomi"
						if(M.health <=0)
							M.Death(usr)
						usr.froze = 0
				sleep(100)
				usr.froze=0


mob/uchiha
	verb
		Sharinganilluminate() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Illuminate"
			if(usr.illuminating)
				return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			usr.illuminating=1
			for(var/mob/npcs/Bunshin/B in world)
				if(usr.Mnin <= 25&&usr.Mgen <= 15&&usr.Mtai <= 20)
					usr << "Desculpa, não é forte o suficiente ..."
					return
				else
					var/image/I = image('Bun.dmi',B,"googa")
					src << I
					usr.illu = 1
			for(var/mob/npcs/KBunshin/K in world)
				if(usr.Mnin <= 100&&usr.Mgen <= 111&&usr.Mtai <= 100)
					usr << "não......"
					return
				else
					var/image/I = image('Bun.dmi',K,"googa")
					src << I
					usr.illu = 1
			for(var/mob/M in oview(10))
				M.invisibility = 0
				M.overlays += 'Bun.dmi'
				sleep(30)
				M.overlays -= 'Bun.dmi'
				if(M.kawa)
					M.overlays += 'Bun.dmi'
					sleep(30)
					M.overlays -= 'Bun.dmi'
			sleep(30)
			usr.illuminating=0

mob/proc/stoptsuki()
	hurt
		if(usr.froze)
			usr<<"Você está freezado"
			return
		if(usr.resting)
			usr<<"Not while resting"
			return
		if(usr.meditating)
			usr<<"Não enquanto medita"
			return
		if(usr.Frozen)
			usr<<"Você está freezado"
			return
		if(usr.caught)
			usr<<"Você foi capturado"
			return
		if(usr.captured)
			usr<<"Você foi capturado"
			return
		if(src.stop == 0)
			src.health -= times
			src<<"[dude] tsukiyomi does [times] damage."
			dude<<"tsukiyomi does [times]."
			usr.overlays-='tsukiyomistill.dmi'
			usr.overlays -= 'sharingan.dmi'
			sleep(20)
			goto hurt
		else
			return


mob/uchiha
	verb
		Sharinganfreeze(mob/M in oview(1)) // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Sharingan Freeze"
			if(usr.firing)
				return
			if(M.PK==0)
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(M)
				if(M.froze)
					usr << "Their already froze.."
					return
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			else // If the firing var isn't 1...
				M<<"Você foi freezado pelo [usr]'s Sharingan."
				usr<<"Você freezo [M] com seu Sharingan"
				var/Sleeptime = round(usr.gen/10)
				if(Sleeptime <= 1)
					Sleeptime = 55
					M.Frozen = 1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"Você saiu do [usr]'s Sharingan freeze."
						usr<<"[M] está livre do seu Sharingan!"
						M.froze = 0
					sleep(8)
				else
					M.Frozen=1
					M.froze = 1
					sleep(Sleeptime)
					if(M)
						M.Frozen=0
						M<<"Você saiu do [usr]'s Sharingan freeze."
						usr<<"[M] está livre do seu Sharingan!"
						M.froze = 0
					sleep(8)
				sleep(100)
				if(M)
					M.froze=0


mob/uchiha
	verb
		Sharingan() // Verb used for firing the beam
			set category = "Doujutsu"
			set name = "Sharingan"
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(!usr.shari&&usr.sharingan1&&!usr.ST) // If the mob's firing var is one...
				usr.overlays+='sharinganthing.dmi'
				usr.icon_state="1"
				usr.overlays += 'sharingan.dmi'
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao 1° stagio do Sharingan"
				usr.shari=1
				usr.ST=1
				usr.Suses += 1
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				if(usr.Mnin>=500&&usr.Suses>=50)
					usr.sharingan2=1
					usr.sharingan1=0
				return
			if(!usr.shari&&usr.sharingan2&&!usr.ST) // If the firing var isn't 1...
				usr.overlays+='sharinganthing.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.icon_state="2"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao 2° stagio do Sharingan"
				usr.shari=1
				usr.ST=1
				usr.Suses += 1
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/uchiha/verb/Sharinganfreeze
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				if(usr.Mnin>=700&&usr.Mgen>=400&&usr.Suses>=70)
					usr.sharingan3=1
					usr.sharingan2=0
				return
			if(!usr.shari&&usr.sharingan3&&!usr.ST) // If the firing var isn't 1...
				usr.overlays+='sharinganthing.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.icon_state="3"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#8b0000>S</FONT><FONT COLOR=#a0050f>h</FONT><FONT COLOR=#b40b1f>a</FONT><FONT COLOR=#c9102e>r</FONT><FONT COLOR=#dc143c>i</FONT><FONT COLOR=#ca1131>n</FONT><FONT COLOR=#b80d25>g</FONT><FONT COLOR=#a50818>a</FONT><FONT COLOR=#93040c>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao 3° stagio do Sharingan"
				usr.Suses += 1
				usr.shari=1
				usr.ST=1
				usr.Move_Delay=0
				usr.nin=usr.nin*1.2
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/uchi/verb/Counter
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				if(usr.Mnin>=1000&&usr.Mgen>=700&&usr.Suses>=100&&usr.kills>=150)
					usr.sharingan3=0
					usr.mangekyou=1
				return
			if(!usr.shari&&usr.mangekyou&&!usr.ST&&usr.goingmange)
				usr.overlays+='sharinganthing.dmi'
				usr.overlays += 'sharingan.dmi'
				usr.icon_state="mangekyou"
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#696969>M</FONT><FONT COLOR=#766065>a</FONT><FONT COLOR=#835760>n</FONT><FONT COLOR=#904d5b>g</FONT><FONT COLOR=#9d4456>e</FONT><FONT COLOR=#a93a50>k</FONT><FONT COLOR=#b6314b>y</FONT><FONT COLOR=#c32746>o</FONT><FONT COLOR=#d01e41>u</FONT><FONT COLOR=#dc143c> </FONT><FONT COLOR=#d41337>S</FONT><FONT COLOR=#ca1131>h</FONT><FONT COLOR=#c10f2b>a</FONT><FONT COLOR=#b80d25>r</FONT><FONT COLOR=#af0b1f>i</FONT><FONT COLOR=#a50818>n</FONT><FONT COLOR=#9c0612>g</FONT><FONT COLOR=#93040c>a</FONT><FONT COLOR=#890206>n</FONT><FONT COLOR=#800000>!</FONT>"
				view()<<"[usr]'s suas pupilas dilatam para dar forma ao Legendary Mangekyou Sharingan"
				usr.Suses += 1
				usr.shari=1
				usr.gen=usr.gen*1.2
				usr.ST=1
				usr.sharingan3=1
				usr.verbs += /mob/uchiha/verb/Sharinganilluminate
				usr.verbs += /mob/uchiha/verb/Sharinganfreeze
				usr.verbs += /mob/uchi/verb/Counter
				usr.verbs += /mob/uchiha/verb/Amateratsu
				usr.verbs += /mob/uchiha/verb/Tsukiyomi
				usr.see_invisible = 1
				sleep(15)
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				usr.overlays-='sharinganthing.dmi'
				return
			else if(usr.shari)
				usr<<"You release your Sharingan."
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'sharingan.dmi'
				usr.overlays -= 'sharingan.dmi'
				usr.see_invisible = 0
				usr.nin=usr.Mnin
				usr.gen=usr.Mgen
				usr.goingmange=0
				usr.verbs -= /mob/uchiha/verb/Sharinganilluminate
				usr.verbs -= /mob/uchiha/verb/Sharinganfreeze
				usr.verbs -= /mob/uchiha/verb/Amateratsu
				usr.verbs -= /mob/uchiha/verb/Tsukiyomi
				usr.shari = 0
				sleep(50)
				usr.ST=0
				return



mob/uchiha
	verb
		MangekyouPrep()
			set category="Doujutsu"
			set name = "Use Mangekyou"
			if(usr.firing)
				return
			if(usr.froze)
				usr<<"Você está freezado
"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Não enquanto medita"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			usr.goingmange=1
			usr.sharingan3=0
			if(usr.Suses<=100)
				usr.Suses=101
			usr<<"Now use Sharingan"
			sleep(100)
			usr.goingmange=0
			usr.sharingan3=1










//HYUUGA

obj
	hyuugaeyes
		icon='byakuganthing.dmi'
mob/var/bya1=1
mob/var/bya2=0
mob/hyuuga
	verb
		Byakugan()
			set category = "Doujutsu"
			set name = "Byakugan"
			if(usr.froze)
				usr<<"Você está freezado"
				return
			if(usr.Frozen)
				usr<<"Você está freezado"
				return
			if(usr.caught)
				usr<<"Você foi capturado"
				return
			if(usr.captured)
				usr<<"Você foi capturado"
				return
			if(usr.resting)
				usr<<"Não enquanto medita"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.bya&&usr.bya1) // If the mob's firing var is one...
				var/obj/hyuugaeyes/B = new /obj/hyuugaeyes
				usr.dir=SOUTH
				B.loc = usr.loc
				usr.overlays += 'byakugan.dmi'
				flick("1",B)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f5f5f5>B</FONT><FONT COLOR=#e4eff2>y</FONT><FONT COLOR=#d2e7ee>a</FONT><FONT COLOR=#bfe0ea>k</FONT><FONT COLOR=#add8e6>u</FONT><FONT COLOR=#b1d4df>g</FONT><FONT COLOR=#b5cfd7>a</FONT><FONT COLOR=#b9cad0>n</FONT><FONT COLOR=#bdc5c8>!</FONT><FONT COLOR=#c0c0c0>!</FONT>"
				view()<<"Os olhos de [usr] ficam mais brilhantes"
				usr.tai = usr.tai*2
				usr.bya=1
				usr.byaU += 1
				usr.verbs += /mob/hyuuga/verb/HakkeRokujuuYonshou
				usr.verbs += /mob/hyuuga/verb/ByakuganSearch
				sleep(13)
				del(B)
				if(usr.Mnin>=500&&usr.Mtai>=500)
					usr.bya1=0
					usr.bya2=1
				return
			if(!usr.bya&&usr.bya2) // If the firing var isn't 1...
				var/obj/hyuugaeyes/B = new /obj/hyuugaeyes
				usr.dir=SOUTH
				B.loc = usr.loc
				usr.overlays += 'byakugan.dmi'
				flick("1",B)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#f5f5f5>B</FONT><FONT COLOR=#e4eff2>y</FONT><FONT COLOR=#d2e7ee>a</FONT><FONT COLOR=#bfe0ea>k</FONT><FONT COLOR=#add8e6>u</FONT><FONT COLOR=#b1d4df>g</FONT><FONT COLOR=#b5cfd7>a</FONT><FONT COLOR=#b9cad0>n</FONT><FONT COLOR=#bdc5c8>!</FONT><FONT COLOR=#c0c0c0>!</FONT>"
				view()<<"Os olhos de [usr] ficam mais brilhantes com grande intensidade"
				usr.bya=1
				usr.byaU += 1
				usr.tai = usr.tai*2
				usr.verbs += /mob/hyuuga/verb/HakkeRokujuuYonshou
				usr.verbs += /mob/hyuuga/verb/ByakuganSearch
				usr.verbs += /mob/hyuuga/verb/HakkeHyakuNijuhaSho
				sleep(13)
				del(B)
				return
			else
				if(usr.bya)
					usr<<"You release Byakugan."
					usr.overlays -= 'byakugan.dmi'
					usr.verbs -= /mob/hyuuga/verb/HakkeRokujuuYonshou
					usr.verbs -= /mob/hyuuga/verb/ByakuganSearch
					usr.verbs -= /mob/hyuuga/verb/HakkeHyakuNijuhaSho
					usr.tai = usr.Mtai
					usr.bya = 0
					usr.icon_state=""
					return

		ByakuganSearch()
			set category = "Doujutsu"
			set name = "Search"
			for(var/mob/M in world)
				if(usr.froze)
					usr<<"Você está freezado"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Não enquanto medita"
					return
				if(M.client&&M.z==usr.z)
					usr<<"{\icon[M][M.name],Rank - [M.rank], health - [M.health],Chakra - [M.chakra]"
					usr<<"Tai - [M.tai],Nin - [M.nin],Gen - [M.gen]"
					usr<<"Location; [M.x],[M.y]"