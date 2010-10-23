
mob/verb
	PracticeSigns()
		set category = "Training"
		set name = "Hand sign Practice"
		switch(input("What hand signs do you wish to use?",text) in list ("Tiger","Dog","Dragon","Horse","Ram","Ox","Rat","Boar","Monkey","Snake","Bird","Rabbit","EXICUTE"))
			if("Tiger")
				if(usr.Otiger == 1)
					usr<<"Tiger sign."
					usr.tiger += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Dog")
				if(usr.Odog == 1)
					usr<<"Dog sign."
					usr.dogs += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Dragon")
				if(usr.Odragon == 1)
					usr<<"Dragon sign."
					usr.dragon += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Horse")
				if(usr.Ohorse == 1)
					usr<<"Horse sign."
					usr.horse += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Ram")
				if(usr.Oram == 1)
					usr<<"Ram sign."
					usr.ram += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Ox")
				if(usr.Oox == 1)
					usr<<"Ox sign."
					usr.ox += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Rat")
				if(usr.Orat == 1)
					usr<<"Rat sign."
					usr.rat += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Boar")
				if(usr.Oboar == 1)
					usr<<"Boar sign."
					usr.boar += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Monkey")
				if(usr.Omonkey == 1)
					usr<<"Monkey sign."
					usr.monkey += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Snake")
				if(usr.Osnake == 1)
					usr<<"Snake sign."
					usr.snake += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Bird")
				if(usr.Obird == 1)
					usr<<"Bird sign."
					usr.bird += 1
					return
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."
			if("Rabbit")
				if(usr.Orabbit == 1)
					usr<<"Rabbit sign."
					usr.rabbit += 1
				else
					usr<<"You don't know how to do that sign, maybe someone will show you how."

			if("EXICUTE")
				Handseals()
				usr.Utiger=usr.tiger
				usr.Udog=usr.dogs
				usr.Udragon=usr.dragon
				usr.Uhorse=usr.horse
				usr.Uram=usr.ram
				usr.Uox=usr.ox
				usr.Urat=usr.rat
				usr.Uboar=usr.boar
				usr.Umonkey=usr.monkey
				usr.Usnake=usr.snake
				usr.Ubird=usr.bird
				usr.Urabbit=usr.rabbit
				if(usr.Utiger == 2&&usr.Village=="Leaf"||usr.Utiger == 2&&usr.Village=="Grass")
					usr << "<B><font color = blue>You learned Katon Housenka!"
					usr.verbs += new /mob/katon/verb/KatonHousenka()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Udragon == 3&&usr.Usnake==1&&usr.Village=="Leaf"||usr.Udragon == 3&&usr.Usnake==1&&usr.Village=="Grass")
					usr << "<B><font color = blue>You learned Katon No Jutsu!"
					usr.verbs += new /mob/uchiha/verb/FireArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Umonkey==3&&usr.Udragon==1&&usr.Village == "Mist")
					usr << "<B><font color = blue>You learned Suiton Suiryuudan no Jutsu!!"
					usr.verbs += new /mob/Suiton/verb/SuitonSuiryuudannoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Umonkey==3&&usr.Udragon==1&&usr.Village == "Snow")
					usr << "<B><font color = blue>You learned Makyou Suiryuudan no Jutsu!!"
					usr.verbs += new /mob/Makyou/verb/MakyouSuiryuudannoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Umonkey==3&&usr.Utiger==1&&usr.Village == "Mist")
					usr << "<B><font color = blue>You learned Suirou No Jutsu!!"
					usr.verbs += new /mob/suiton/verb/SuirouNoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Utiger==1&&Usnake==3&&usr.Village == "Rain")
					usr << "<B><font color = blue>You learned Suiton Daibakufu no Jutsu!!"
					usr.verbs += new /mob/Suiton/verb/SuitonDaibakufunoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==1&&Usnake==3&&usr.Village == "Rain")
					usr << "<B><font color = blue>You learned Suiton Doryuudan!!"
					usr.verbs += new /mob/suiton/verb/SuitonDoryuudan()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uox==1&&Usnake==3&&usr.Village == "Rain")
					usr << "<B><font color = blue>You learned Rain No Jutsu!!"
					usr.verbs += new /mob/suiton/verb/RainArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Ubird==1&&Usnake==3&&usr.Village == "Rain")
					usr << "<B><font color = blue>You learned Suiton Bunshin No Jutsu!!"
					usr.verbs += new /obj/bunshins/SuitonBunshinnojutsu/verb/SuitonBunshinNoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Umonkey==1&&Urat==3&&usr.Village == "Waterfall")
					usr << "<B><font color = blue>You learned Suishouha!!"
					usr.verbs += new /mob/suiton/verb/Suishouha()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Udragon==1&&Urat==3&&usr.Village == "Waterfall")
					usr << "<B><font color = blue>You learned Suiton Suishouha!!"
					usr.verbs += new /mob/suiton/verb/SuitonSuishouha()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Utiger==1&&Urat==3&&usr.Village == "Waterfall")
					usr << "<B><font color = blue>You learned Suiton Kyuu!!"
					usr.verbs += new /mob/suiton/verb/SuitonKyuu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Udog==1&&Urat==3&&usr.Village == "Waterfall")
					usr << "<B><font color = blue>You learned Suiton Sousou!!"
					usr.verbs += new /mob/suiton/verb/SuitonSousou()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==1&&Uox==3&&usr.Village == "Grass")
					usr << "<B><font color = blue>You learned Katonheki!!"
					usr.verbs += new /mob/katon/verb/Katonheki()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Udragon==1&&Uox==3&&usr.Village == "Grass")
					usr << "<B><font color = blue>You learned Karyuudan!!"
					usr.verbs += new /mob/katon/verb/Karyuudan()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Leaf"&&usr.Utiger==1&&usr.Udog==1||usr.Village=="Grass"&&usr.Utiger==1&&usr.Udog==1)
					usr << "<B><font color = blue>You learned Katon Goukakyuu!!"
					usr.verbs += new /mob/katon/verb/KatonGoukakyuu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Leaf"&&Udragon==3&&Utiger==1)
					usr << "<B><font color = blue>You learned Katon Karyuu Endan!!"
					usr.verbs += new /mob/katon/verb/KatonKaryuuEndan()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Leaf"&&usr.Udragon==2)
					usr << "<B><font color = blue>You have acquired Katon Ryuuka No Jutsu!!"
					usr.verbs += new /mob/katon/verb/KatonRyuukanoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.KawaN >= 100&&usr.Uox==2)
					usr << "<B><font color = blue>You learned Shushin No Jutsu!!"
					usr.verbs += new /mob/jutsu/verb/ShushinNoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.hengeN >= 100&&usr.Usnake==2)
					usr << "<B><font color = blue>You learned Mei Mei No Jutsu!!"
					usr.verbs += new /mob/jutsu/verb/MieMie()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uhorse==3&&usr.Uram==1&&usr.Village == "Rock")
					usr << "<B><font color = blue>You have acquired Doton Doryo Dango!!"
					usr.verbs += new /mob/doton/verb/DotonDoryoDango()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uhorse==3&&usr.Ubird==1&&usr.Village == "Rock")
					usr << "<B><font color = blue>You have acquired Doton Doryuuheki!!"
					usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Urat==3&&usr.Utiger==1&&usr.Village == "Cloud")
					usr << "<B><font color = blue>You have acquired Raikyuu No Jutsu!!"
					usr.verbs += new /mob/rai/verb/Raikyuu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Urat==3&&usr.Uox==1&&usr.Village == "Cloud")
					usr << "<B><font color = blue>You have acquired Rai No Jutsu!!"
					usr.verbs += new /mob/rai/verb/RaiArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Urat==3&&usr.Uboar==1&&usr.Village == "Cloud")
					usr << "<B><font color = blue>You have acquired Rairyuu No Tatsumaki!!"
					usr.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==3&&usr.Utiger==1&&usr.Village == "Sand")
					usr << "<B><font color = blue>You have acquired Fuuton: Kaze Dangan No Jutsu!!"
					usr.verbs += new /mob/fuuton/verb/FuutonKazeDangan()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==3&&usr.Ubird==1&&usr.Village == "Sand")
					usr << "<B><font color = blue>You have acquired Flight!!"
					usr.verbs += new /mob/flight/verb/Fly()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==3&&usr.Udragon==1&&usr.Village == "Sand")
					usr << "<B><font color = blue>You have learned Ninpou Kamaitachi!!"
					usr.verbs += new /mob/fuuton/verb/NinpouKamaitachi()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==3&&usr.Udog==1&&usr.Village == "Sand")
					usr << "<B><font color = blue>You have acquired Fuuton: Renkuudan No Jutsu!!"
					usr.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uboar==3&&usr.Usnake==1&&usr.Village == "Sand")
					usr << "<B><font color = blue>You have acquired Fuuton: Daitoppa No Jutsu!!"
					usr.verbs += new /mob/fuuton/verb/Fuuton_Daitoppa()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Umonkey==3&&usr.Urabbit==1&&usr.Village == "Mist")
					usr << "<B><font color = blue>You learned Suiton Suikoudan no Jutsu!!"
					usr.verbs += new /mob/Suiton/verb/SuitonSuikoudannoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Umonkey==3&&usr.Utiger==1&&usr.Village == "Snow")
					usr << "<B><font color = blue>You learned Makyou Suikoudan no Jutsu!!"
					usr.verbs += new /mob/Makyou/verb/MakyouSuikoudannoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Urat==3&&usr.Uram==1&&usr.Village == "Cloud")
					usr << "<B><font color = blue>You learned Ikazuchi No Kiba!!"
					usr.verbs += new /mob/rai/verb/Ikazuchi_No_Kiba()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Urat==3&&usr.Ubird==1&&usr.Village == "Cloud")
					usr << "<B><font color = blue>You learned Cloud Summons!!"
					usr.verbs += new /mob/flight/verb/Cloud()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Ubird==3&&usr.Utiger==1&&usr.Village == "Sound")
					usr << "<B><font color = blue>You learned Zankuuha!!"
					usr.verbs += new /mob/sound/verb/Zankuuha()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Ubird==3&&usr.Usnake==1&&usr.Village == "Sound")
					usr << "<B><font color = blue>You learned Sen'eijashu!!"
					usr.verbs += new /mob/sound/verb/Seneijashu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Ubird==3&&usr.Uox==1&&usr.Village == "Sound")
					usr << "<B><font color = blue>You learned Zan No Jutsu!!"
					usr.verbs += new /mob/sound/verb/ZanArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Ubird==3&&usr.Uram==1&&usr.Village == "Sound")
					usr << "<B><font color = blue>You learned Zankyokukuuha!!"
					usr.verbs += new /mob/sound/verb/Zankyokukuuha()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Ubird==3&&usr.Urabbit==1&&usr.Village == "Sound")
					usr << "<B><font color = blue>You learned Kyoumeisen!!"
					usr.verbs += new /mob/sound/verb/Kyoumeisen()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Urabbit==3&&usr.Uhorse==1)
					usr << "<B><font color = blue>You have learned Chidori!"
					usr.verbs += new /mob/jutsu/verb/Chidori()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uram==1&&usr.Urabbit==3)
					usr<<"<b><font color=blue> You have learned Rasengan!"
					usr.verbs += new /mob/jutsu/verb/Rasengan()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Rain"&&usr.Usnake==3&&usr.Udog==1)
					usr << "<B><font color = blue>You have learned Jouro Senban!"
					usr.verbs += new /mob/rain/verb/JouroSenban()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Mist"&&usr.Umonkey==2&&usr.Ubird==1)
					usr<<"<b><font color=blue> You have learned Kirigakure!"
					usr.verbs += new /mob/mist/verb/KirigakurenoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Snow"&&usr.Umonkey==2&&usr.Uox==1)
					usr<<"<b><font color=blue> You have learned Makyou Armor!"
					usr.verbs += new /mob/ice/verb/IceArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Mist"&&usr.Umonkey==3&&usr.Uox==1)
					usr<<"<b><font color=blue> You have Mist No Jutsu!"
					usr.verbs += new /mob/mist/verb/MistArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Waterfall"&&usr.Urat==3&&usr.Uox==1)
					usr<<"<b><font color=blue> You have Suiton No Jutsu!"
					usr.verbs += new /mob/suiton/verb/SuitonArmor()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Village=="Snow"&&usr.Umonkey==2&&usr.Urabbit==1)
					usr << "<B><font color = blue>You learned Makyou Hyoushou!"
					usr.verbs += new /mob/haku/verb/MakyouHyoushou()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return
				if(usr.Uox==1&&usr.Uhorse==3&&usr.Village == "Rock")
					usr << "<B><font color = blue>You have acquired Doroudorno!!"
					usr.verbs += new /mob/doton/verb/Doroudorno()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					return
				if(usr.Uhorse==3&&usr.Utiger==1&&usr.Village == "Rock")
					usr << "<B><font color = blue>You have acquired Doton Sousou!!"
					usr.verbs += new /mob/doton/verb/DotonSousou()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					return
				if(usr.Uhorse==3&&usr.Udragon==1&&usr.Village == "Rock")
					usr << "<B><font color = blue>You have acquired Doton Kyuu!!"
					usr.verbs += new /mob/doton/verb/DotonKyuu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					return
				if(usr.Village=="Snow"&&usr.Urabbit==3&&usr.Urat==1)
					usr << "<B><font color = blue>You learned Futagoza No Jutsu!!"
					usr.verbs += new /mob/Juvenile_Ice/verb/FutagozaNoJutsu()
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					return
				else
					usr.tiger=0
					usr.dogs=0
					usr.dragon=0
					usr.horse=0
					usr.ram=0
					usr.ox=0
					usr.rat=0
					usr.boar=0
					usr.monkey=0
					usr.snake=0
					usr.bird=0
					usr.rabbit=0
					usr.Utiger=0
					usr.Udog=0
					usr.Udragon=0
					usr.Uhorse=0
					usr.Uram=0
					usr.Uox=0
					usr.Urat=0
					usr.Uboar=0
					usr.Umonkey=0
					usr.Usnake=0
					usr.Ubird=0
					usr.Urabbit=0
					return




