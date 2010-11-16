client
	script = "<STYLE>BODY {background: black; color: white}  IMG.icon{width:48;height:48}</STYLE>"

mob/Login()
	src.loc = locate(7,7,20)
	src<<'Naruto main theme.mid'
	alert("AGRADECEMOS DESDE JÁ PELA SUA PREFERÊNCIA")
	src<<"<font size=5><font color = blue><b><u> Bem vindo ao Naruto Live in Brazil ,Se divirta no melhor Server Brasileiro de Naruto.</font>"
	src.client.view=6
	if(src.client.address == "")//Hydrocrush
		src<<"<b><font size=3>For the last damn time, Terrorize your own game. Noob."
		world<<"Master matt tried logging in...ROFL Lets all point and laugh."
		del(src)

	if(src.client.address == "71.225.71.97")//Nejimon
		del(src)

	if(src.client.address == "24.239.235.218")//Tac
		del(src)

	if(src.client.address == "24.160.246.67")//Strawgate
		del(src)

	if(src.client.address == "69.113.71.131")//XDark_WizardX
		del(src)

	if(src.key == "")
		src<<"<b><font size=3>NO guest key Noob."
		del(src)
	if(src.key == "")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == " ")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "  ")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "t   -")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "")
		src<<"Go play ur own game stop tring to rip mine."
		del(src)
	if(src.key == "")
		src<<"YOU FAG."
		del(src)
	if(src.key=="'")
		src<<"Fuck off fag"
		del(src)
	if(src.client.address == "24.239.235.218")//Tac
		del(src)
	if(src.key == "MiickeyM")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/owner/verb)
		src.GM=1
		return
	if(src.key == "Firelias")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/owner/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/owner/verb)
		src.verbs += typesof(/mob/sound/verb)
		src.verbs += typesof(/mob/akatsuki/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Owner/verb)
		src.verbs += typesof(/mob/owner/verb)
		src.rank="kage"
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank="kage"
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Admin/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Admin/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Admin/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/hokage/verb)
		src.rank=""
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Admin/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Enforcer/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Enforcer/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Enforcer/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Enforcer/verb)
		src.GM=1
		return
	if(src.key=="")
		src.verbs += typesof(/mob/Enforcer/verb)
		src.GM=1
		return

	///////////////////////////////////////////////////////////
	if(src.key=="")
		src.verbs -= new /mob/katon/verb/Katonheki()
		src.verbs += new /mob/mist/verb/KirigakurenoJutsu()
		return
	if(src.key=="")
		src.verbs += new /mob/medical/verb/ChakraNoMesu()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageteleport()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageteleport()
		return
	if(src.key=="")
		src.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageteleport()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageteleport()
		return
	if(src.key=="")
		src.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
		return
	if(src.key=="")
		src.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageteleport()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageteleport()
		return
	if(src.key=="")
		src.verbs += new /mob/rain/verb/JouroSenban()
		return
	if(src.key=="")
		src.verbs += new /mob/rain/verb/JouroSenban()
		return
	if(src.key=="")
		src.verbs += new /mob/rain/verb/JouroSenban()
		return
	if(src.key=="")
		src.verbs += new /obj/bunshins/TajuuKageBunshinNoJutsu/verb/TajuuKageBunshinNoJutsu()
		return
	if(src.key=="")
		src.verbs += new /mob/suiton/verb/SuitonDoryuudan()
		return
	if(src.key=="")
		src.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
		return
	if(src.key=="")
		src.verbs += new /mob/kaguyajutsu/verb/Sawarabi()
		return
	if(src.key=="")
		src.verbs += new /mob/medical/verb/Shousen_Jutsu()
		return
	if(src.key=="")
		src.verbs += new /mob/medical/verb/Shousen_Jutsu()
		return
	if(src.key=="")
		src.verbs += new /mob/rain/verb/JouroSenban()
		return
	if(src.key=="")
		src.verbs += new /mob/Tenten/verb/Focus()
		return
	if(src.key=="")
		src.verbs += new /mob/haku/verb/MakyouHyoushou()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageblind()
		return
	if(src.key=="")
		src.verbs += new /mob/nara/verb/kageblind()
		return
	if(src.key=="")
		src.verbs += new /mob/medical/verb/ChakraAbsorb()
		return
mob/var/tmp/GM=0
mob/player/uchiha
	Uchiha=1
	Realplayer = 1
	human = 1
	Clan = "Uchiha"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/nonclan
	NonClan=1
	Realplayer = 1
	human = 1
	Clan = "Non-Clan"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/nara
	Nara=1
	Realplayer = 1
	human = 1
	Clan = "Nara"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Hyuuga
	Hyuuga=1
	Realplayer = 1
	human = 1
	Clan = "Hyuuga"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/kaguya
	Kaguya=1
	Realplayer = 1
	human = 1
	Clan = "Kaguya"
	Inuzuka=0
	Gaaraclan=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Gaara
	Gaaraclan=1
	Realplayer = 1
	human = 1
	Clan = "Gaara"
	Inuzuka=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Inuzuka
	Inuzuka=1
	Realplayer = 1
	human = 1
	Clan = "Inuzuka"
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Akimichi = 0
	Kamizuri=0
mob/player/Akimichi
	Akimichi=1
	Realplayer = 1
	human = 1
	Clan = "Akimichi"
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Kamizuri=0
mob/player/Haku
	Haku=1
	Realplayer = 1
	human = 1
	Clan = "Haku"
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Aburame=0
	Kamizuri=0
mob/player/Aburame
	Aburame=1
	Realplayer = 1
	Konchuu = 10
	human = 1
	Clan = "Aburame"
	Haku = 0
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
	Kamizuri=0
mob/player/Kamizuri
	Kamizuri=1
	Aburame=0
	Realplayer = 1
	Konchuu = 10
	human = 1
	Clan = "Kamizuri"
	Haku = 0
	Akimichi=0
	Inuzuka=0
	Gaaraclan=0
	Kaguya=0
	Hyuuga=0
	Nara=0
	NonClan=0
	Uchiha=0
mob
	Logout()
		src.inkaku=0
		src.overlays -='kaku.dmi'
		src.earthscroll=0
		src.heavenscroll=0
		src.overlays -= 'peacock.dmi'
		src.overlays -='Rainarmor.dmi'
		src.Rainarmor=0
		src.overlays -= 'cloud.dmi'
		src.overlays -= 'wings.dmi'
		src.overlays-='staraura.dmi'
		src.overlays-='WaterStrom.dmi'
		src.overlays-='rockball.dmi'
		src.captured=0
		src.caught=0
		src.froze=0
		src.Frozen=0
		src.aura=0
		src.Warmor=0
		src.overlays -= 'Wprison.dmi'
		src.counter=0
		src.overlays-='counter.dmi'
		src:sight &= ~BLIND
		if(src.Mchakra>=1000000)
			src.Mchakra=1000000
		if(src.maxhealth>=5000000)
			src.maxhealth=5000000
		if(src.ttexp>=100)
			src.ttexp=0
		if(src.nnexp>=100)
			src.nnexp=0
		if(src.ggexp>=100)
			src.ggexp=0
		if(src.chakra<=src.Mchakra)
			src.chakra=src.Mchakra
		if(src.health<=src.maxhealth)
			src.health=src.maxhealth
		src.buoyu=0
		src.tagset=0
		src.Flight=0
		src.density = 1
		src.overlays -= 'Flight.dmi'
		src.overlays -= 'wings.dmi'
		src.verbs -= new /mob/tag/verb/Explodir
		src.verbs -= new /mob/tag/verb/Explodir
		src.verbs -= new /mob/tag/verb/Explodir
		src.verbs -= new /mob/tag/verb/Explodir
		src.verbs -= new /mob/tag/verb/Explodir
		src.stop = 0
		src.dead=0
		src.resting = 0
		src.doing = 0
		src.Frozen = 0
		src.Moveing = 0
		src.firing = 0
		src.doing = 0
		src.Mountain=0
		src.onwater=0
		src.makeHunter()
		src.Skills()
		src.makeJounin()
		src.tagset=0
		src.tai = src.Mtai
		src.nin = src.Mnin
		src.gen = src.Mgen
		src.focusing =0
		src.shurikenskill=src.Mshurikenskill
		src.kunaiskill=src.Mkunaiskill
		src.trapskill=src.Mtrapskill
		src.icon = src.Oicon
		src.overlays -= 'Bun.dmi'
		src.Kshibari = 0
		src.kubi = 0
		src.firing = 0
		src.overlays -= 'meattank.dmi'
		src.inspike = 0
		src.overlays -= 'hakkeshou.dmi'
		src.Kaiten = 0
		src.overlays -= 'gatsuuga.dmi'
		src.ingat = 0
		src.overlays -= 'lotus.dmi'
		src.gate1 = 0
		src.overlays -= 'lotus.dmi'
		src.gate2 = 0
		src.overlays -= 'lotus.dmi'
		src.gate3 = 0
		src.overlays -= 'lotus.dmi'
		src.gate4 = 0
		src.overlays -= 'lotus.dmi'
		src.gate5 = 0
		src.overlays -= 'lotus.dmi'
		src.gate6 = 0
		src.overlays -= 'lotus.dmi'
		src.gate7 = 0
		src.overlays -= 'lotus.dmi'
		src.gate8 = 0
		src.overlays -= 'Marmor.dmi'
		src.overlays -= 'mist.dmi'
		src.Marmor = 0
		src.overlays -= 'Larmor.dmi'
		src.Larmor = 0
		src.overlays -= 'Iarmor.dmi'
		src.Iarmor = 0
		src.overlays -= 'BeeArmor.dmi'
		src.Barmor = 0
		src.overlays -= 'Farmor.dmi'
		src.Farmor = 0
		src.overlays -= 'Zarmor.dmi'
		src.Zarmor = 0
		src.SHarmor = 0
		src.overlays -= 'sharingan.dmi'
		src.overlays -= 'Bun.dmi'
		src.overlays -= 'Chidori.dmi'
		src.overlays -= 'Rasengan.dmi'
		src.overlays -= 'electricity.dmi'
		src.overlays -= 'byakugan.dmi'
		src.overlays -= /obj/Sphere
		src.sphere = 0
		src.overlays -= 'Sarmor.dmi'
		src.Sarmor = 0
		src.overlays -= 'uzaroo.dmi'
		src.inbaika = 0
		src.overlays -= 'MTS.dmi'
		src.intank = 0
		src.overlays -= 'Tan.dmi'
		src.overlays -= 'white.dmi'
		src.overlays -= 'black.dmi'
		src.overlays -= 'blue.dmi'
		src.overlays -= 'red.dmi'
		src.overlays -= 'yellow.dmi'
		src.overlays -= 'vamp.dmi'
		src.overlays -= 'omote.dmi'
		src.overlays -= 'ura.dmi'
		src.overlays -= 'karasu.dmi'
		src.doton = 0
		src.screwed=0
		src.points =0
		src.deaths+=1
		src.finals=0
		src.inmission=0
		src.deathforest=0
		src.inkyuubi=0
		src.overlays -='kyuubi.dmi'
		src.overlays-='sharingan.dmi'
		src.incs=0
		src.overlays-='cs.dmi'
		src.overlays-='cs.dmi'
		src.overlays-='cs.dmi'
		src.overlays-='cs2.dmi'
		src.overlays-='cs2.dmi'
		src.overlays-='cs2.dmi'
		src.overlays-='cs3.dmi'
		src.overlays-='cs3.dmi'
		src.overlays-='cs3.dmi'
		src.inthewar=0
		for(var/mob/puppet/F in src.contents)
			del(F)
		for(var/obj/earthscroll/F in src.contents)
			del(F)
		for(var/obj/heavenscroll/F in src.contents)
			del(F)
		src.icon = src.Oicon
		src.icon_state = ""
		src.SaveK()

