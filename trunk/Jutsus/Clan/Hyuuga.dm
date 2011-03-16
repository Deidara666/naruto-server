mob/hyuuga
	verb
		Jyuken()
			set category = "Jutsus"
			set name = "Jyuken"
			set desc = "The Hyuuga fighting style"
			if(!usr.Jyuken)
				usr<<"Your now useing jyuken."
				usr.Jyuken = 1
				usr.Tekken = 0
				usr.Basic = 0
				return
			if(usr.Jyuken)
				usr<<"Your already useing jyuken."
				return
mob
	verb
		Tekken()
			set category = "Jutsus"
			set name = "Tekken"
			set desc = "A common fighting style"
			if(!usr.Tekken)
				usr<<"Your now useing tekken."
				usr.Jyuken = 0
				usr.Tekken = 1
				usr.Basic = 0
				return
			if(usr.Tekken)
				usr<<"Your already useing Tekken."
				return

mob/hyuuga
	verb
		HakkeshouKaiten() // Verb used for firing the beam
			set category = "Jutsus"
			set name = "Hakkeshou Kaiten"
			if(usr.chakra <= 5)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(!usr.Kaiten&&!usr.firing)
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#0000ff>K</FONT><FONT COLOR=#3a48f7>a</FONT><FONT COLOR=#7491ef>i</FONT><FONT COLOR=#add8e6>t</FONT><FONT COLOR=#83c3cd>e</FONT><FONT COLOR=#57adb4>n</FONT><FONT COLOR=#2c969a>!</FONT><FONT COLOR=#008080>!</FONT>"
				usr.Frozen = 1
				usr.firing = 1
				usr.overlays += 'hakkeshou.dmi'
				usr.Kaiten =1
				OMG
				if(usr.Kaiten)
					usr.chakra -=2
					if(usr.chakra <= 2)
						usr.firing = 0
						usr.overlays -= 'hakkeshou.dmi'
						usr.Kaiten = 0
					else
						sleep(4)
						goto OMG
			else if(usr.Kaiten)
				usr.Frozen = 0
				usr.firing = 0
				usr.overlays -= 'hakkeshou.dmi'
				usr.Kaiten =0
				usr<<"You release Hakkeshou Kaiten."



mob/hyuuga
	verb
		HakkeRokujuuYonshou()
			set name ="Hakke Rokujuu Yonshou"
			set category = "Jutsus"
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
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
			if(usr.froze)
				usr<<"Your frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			if(usr.bya)
				usr.hakkeRU += 1
				usr.firing = 1
				usr.health -= 190
				usr.underlays+='hyuugacircle.dmi'
				var/damage1 = round(usr.tai + rand(1,5))
				var/damage = round(usr.tai + rand(1,5))
				var/damage2 = round(usr.tai + rand(1,6))
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<font color=silver><center><b><font face=verdana>[usr] says: <FONT COLOR=#00bfff>H</FONT><FONT COLOR=#07b7fd>a</FONT><FONT COLOR=#0daffa>k</FONT><FONT COLOR=#14a6f7>k</FONT><FONT COLOR=#1a9df4>e</FONT><FONT COLOR=#2195f1> </FONT><FONT COLOR=#288ced>R</FONT><FONT COLOR=#2e83ea>o</FONT><FONT COLOR=#357ae7>k</FONT><FONT COLOR=#3b72e4>u</FONT><FONT COLOR=#4169e1>j</FONT><FONT COLOR=#4d71df>u</FONT><FONT COLOR=#5879dc>u</FONT><FONT COLOR=#6481d9> </FONT><FONT COLOR=#7089d6>Y</FONT><FONT COLOR=#7b91d3>o</FONT><FONT COLOR=#8799cf>n</FONT><FONT COLOR=#92a1cc>s</FONT><FONT COLOR=#9ea9c9>h</FONT><FONT COLOR=#aab1c6>o</FONT><FONT COLOR=#b5b9c3>u</FONT><FONT COLOR=#c0c0c0>!</FONT>"
					view()<<"<center><B><font size=2><font color=blue>[usr]:2 strikes!"
					view()<<"<center><B><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
					M.health -= damage
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><center><font size=2><font color=blue>[usr]:4 strikes!"
					M.health -= damage1
					view()<<"<B><center><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:8 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:16 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:32 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:64 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
					usr.firing = 0
					usr.icon_state = ""
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.firing = 0
			else
				usr<<"You failed to use Hakke Rokujuu Yonshou"
mob/hyuuga
	verb
		HakkeHyakuNijuhaSho()
			set name ="Hakke Hyaku Nijuha Sho"
			set category = "Jutsus"
			if(usr.firing) // If the mob's firing var is one...
				return
			if(usr.PK==0)
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
			if(usr.bya)
				usr.hakkeRU += 1
				usr.firing = 1
				usr.health -= 190
				usr.underlays+='hyuugacircle.dmi'
				var/damage1 = round(usr.tai*2)
				var/damage = round(usr.tai*3)
				var/damage2 = round(usr.tai*2)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
						view()<<"<font color=silver><center><b><font face=verdana>[usr] says: <FONT COLOR=#b0e0e6>H</FONT><FONT COLOR=#a7d6e6>a</FONT><FONT COLOR=#9dcbe6>k</FONT><FONT COLOR=#92c0e5>k</FONT><FONT COLOR=#88b5e5>e</FONT><FONT COLOR=#7eaae4> </FONT><FONT COLOR=#74a0e4>H</FONT><FONT COLOR=#6a95e3>y</FONT><FONT COLOR=#608ae3>a</FONT><FONT COLOR=#557fe2>k</FONT><FONT COLOR=#4b74e2>u</FONT><FONT COLOR=#4169e1> </FONT><FONT COLOR=#4d71df>N</FONT><FONT COLOR=#5879dc>i</FONT><FONT COLOR=#6481d9>j</FONT><FONT COLOR=#7089d6>u</FONT><FONT COLOR=#7b91d3>h</FONT><FONT COLOR=#8799cf>a</FONT><FONT COLOR=#92a1cc> </FONT><FONT COLOR=#9ea9c9>S</FONT><FONT COLOR=#aab1c6>h</FONT><FONT COLOR=#b5b9c3>o</FONT><FONT COLOR=#c0c0c0>!</FONT> "
						view()<<"<center><B><font size=2><font color=blue>[usr]:2 strikes!"
						view()<<"<center><B><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
						M.health -= damage
						M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><center><font size=2><font color=blue>[usr]:4 strikes!"
					M.health -= damage1
					view()<<"<B><center><font size=2><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:8 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:16 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:32 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
				sleep(5)
				for(var/mob/M in oview(1))
					if(M.Kaiten||M.sphere||M.counter)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.PK==0)
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					if(M.drunk&&M.NonClan)
						view()<<"[M] dodges [usr]'s attack"
						usr.underlays-='hyuugacircle.dmi'
						usr.firing = 0
						return
					view()<<"<B><font size=2><center><font color=blue>[usr]:64 strikes!"
					M.health -= damage2
					view()<<"<B><font size=2><center><font color=blue>[usr] hit [M] for [damage] damage!"
					M.Death(usr)
					usr.firing = 0
					usr.icon_state = ""
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.underlays-='hyuugacircle.dmi'
				usr.firing = 0
			else
				usr<<"You failed to use Hakke Hyaku Nijuha Sho"
mob/hyuuga
	verb
		HakkeKuusho(mob/M in oview(3))
			set name = "Hakke Kuushou"
			set category = "Jutsus"
			if(usr.firing) // If the mob's firing var is one...
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
			if(M.drunk&&M.NonClan)
				view()<<"[M] dodges [usr]'s attack"
				return
			if (M.ingat == 1||M.intank == 1||usr.Kaiten == 1)				.
				return
			if(usr.chakra <= 10)
				usr<<"Not enough chakra!"
			if (M.inspike)
				usr<<"Your attack bounces off of [usr]!"
			if (M.sphere)
				usr<<"Your attack bounces off of the sand!"
			if (M.Kaiten)
				var/damage = round(usr.tai)
				usr <<"<B><font size=2><font color=blue>You attack [M] but their kaiten reflects the damage back at you."
				M <<"<B><font size=2><font color=blue>You reflect [usr]'s attack causing them to hurt themself."
				usr.health -= damage
				usr.Death(M)
			if(M.counter)
				usr<<"They copy and reflect it back at you."
				M<<"You copy and reflect it back at them."
				usr.health -= M.Mnin/5
				Death(usr)
				return
			else
				if(usr.hakkeK >= 25)
					usr.hakkeK += 1
					usr.firing=1
					usr.chakra -= 10
					var/damage = round(usr.tai*1.6)
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>H</FONT><FONT COLOR=#83bce7>a</FONT><FONT COLOR=#7ea8e2>k</FONT><FONT COLOR=#7995dd>k</FONT><FONT COLOR=#7481d7>e</FONT><FONT COLOR=#6f6ed2> </FONT><FONT COLOR=#6a5acd>K</FONT><FONT COLOR=#7469d0>u</FONT><FONT COLOR=#7e79d2>u</FONT><FONT COLOR=#8888d5>s</FONT><FONT COLOR=#9397d7>h</FONT><FONT COLOR=#9da6da>o</FONT><FONT COLOR=#a7b6dc>u</FONT><FONT COLOR=#b0c4de>!</FONT>"
					M.health -= damage
					M.Death(usr)
					step(M,usr.dir)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.hakkeK += 1
						usr.chakra -= 10
						usr.firing=1
						var/damage = round(usr.tai*1.6)
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>H</FONT><FONT COLOR=#83bce7>a</FONT><FONT COLOR=#7ea8e2>k</FONT><FONT COLOR=#7995dd>k</FONT><FONT COLOR=#7481d7>e</FONT><FONT COLOR=#6f6ed2> </FONT><FONT COLOR=#6a5acd>K</FONT><FONT COLOR=#7469d0>u</FONT><FONT COLOR=#7e79d2>u</FONT><FONT COLOR=#8888d5>s</FONT><FONT COLOR=#9397d7>h</FONT><FONT COLOR=#9da6da>o</FONT><FONT COLOR=#a7b6dc>u</FONT><FONT COLOR=#b0c4de>!</FONT>"
						M.health -= damage
						M.Death(usr)
						step(M,usr.dir)
				sleep(17)
				usr.firing=0

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