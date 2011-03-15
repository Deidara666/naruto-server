











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