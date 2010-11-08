var
	leafwar=0
	mistwar=0
	cloudwar=0
	grasswar=0
	rainwar=0
	rockwar=0
	soundwar=0
	waterwar=0
	sandwar=0
	snowwar=0
	SOwar=0
	AKATwar=0
	starwar=0

mob
	verb
		VillageW()
			set category = "Arena"
			set name = "War Toggle"
			if(usr.war==0)
				usr.war=1
				usr<<"You are a good shinobi."
			else
				usr.war=0
				usr<<"You are a traitor for not joining the war."

