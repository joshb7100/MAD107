/* Game Sorting - Critical Thinking
 Using a dictionary and several arrays the program will store data about the 3DS games I own
 and will sort them:
 Alphabetically
 By the year they came out

 Will then determine the most common ESRB rating
 */
 
 //Dictionaries and arrays used to store game data
 var dgamei: Dictionary<Int,Int> = [:]
 var gname: [String] = []
 var gyear: [Int] = []
 var grating: [String] = []
 var sortedname: [Int] = []
 var sortedyear: [Int] = []
 var mostrating: [Int] = [0,0,0,0]
 
 var i = 0;
 // The dictionary key is the last 5 digits of the games bar code, and the value is the index for the info arrays.
 //Zelda Triforce Heroes
 dgamei[74334] = i
 gname.append("Zelda Triforce Heroes")
 gyear.append(2015)
 grating.append("E")
 
//Pokemon Super Mystery Dungeon
  i += 1
 dgamei[74331] = i
 gname.append("Pokemon Super Mystery Dungeon")
 gyear.append(2015)
 grating.append("E")

 //Super Mario 3D Land
 i += 1
 dgamei[74172] = i
 gname.append("Super Mario 3D Land")
 gyear.append(2011)
 grating.append("E")
 
 //Super Smash Bros 3DS
 i += 1
 dgamei[74290] = i
 gname.append("Super Smash Bros 3DS")
 gyear.append(2014)
 grating.append("E 10+")
 
 //Mario & Luigi Dream Team
 i += 1
 dgamei[74246] = i
 gname.append("Mario & Luigi Dream Team")
 gyear.append(2013)
 grating.append("E 10+")
 
 //Luigi's Mansion Dark Moon
 i += 1
 dgamei[74215] = i
 gname.append("Luigi's Mansion Dark Moon")
 gyear.append(2013)
 grating.append("E")
 
 //Pokemon Omega Ruby
 i += 1
 dgamei[74292] = i
 gname.append("Pokemon Omega Ruby")
 gyear.append(2014)
 grating.append("E")
 
 //Fire Emblem Awakening
 i += 1
 dgamei[74235] = i
 gname.append("Fire Emblem Awakening")
 gyear.append(2013)
 grating.append("T")
 
 //Zelda A Link Between Worlds
 i += 1
 dgamei[74253] = i
 gname.append("Zelda A Link Between Worlds")
 gyear.append(2013)
 grating.append("E")
 
 //Paper Mario Sticker Star
 i += 1
 dgamei[74213] = i
 gname.append("Paper Mario Sticker Star")
 gyear.append(2012)
 grating.append("E")
 
 //Bravely Default
 i += 1
 dgamei[74265] = i
 gname.append("Bravely Default")
 gyear.append(2014)
 grating.append("T")
 
 //New Super Mario Bros 2
 i += 1
 dgamei[74207] = i
 gname.append("New Super Mario Bros 2")
 gyear.append(2012)
 grating.append("E")
 
 //Zelda Majoras Mask
 i += 1
 dgamei[74280] = i
 gname.append("Zelda Majoras Mask")
 gyear.append(2015)
 grating.append("E 10+")
 
 //Kirby Triple Deluxe
 i += 1
 dgamei[74276] = i
 gname.append("Kirby Triple Deluxe")
 gyear.append(2014)
 grating.append("E")
 
 
 //Populate sorting arrays with the keys from the dictionary
 for key in dgamei.keys{
 sortedname.append(key)
 sortedyear.append(key)
 }
 
 print("LIST SORTED ALPHABETICALLY:")
 //Sort alphabetically using a bubblesort
 for( i = 0; i < sortedname.count - 1; i += 1){
	if(gname[dgamei[sortedname[i]]!] > gname[dgamei[sortedname[i + 1]]!]){
		var tempkey = sortedname[i+1]
		sortedname[i+1] = sortedname[i]
		sortedname[i] = tempkey
		if(i != 0){
			i -= 2
			}
		}
 }
 
 //print out the names of the games alphabetically
 for name in sortedname{
	print(gname[dgamei[name]!])
 }
 
  //Sort by year using bubblesort
 for( i = 0; i < sortedyear.count - 1; i += 1){
	if(gyear[dgamei[sortedyear[i]]!] > gyear[dgamei[sortedyear[i + 1]]!]){
		var tempkey = sortedyear[i+1]
		sortedyear[i+1] = sortedyear[i]
		sortedyear[i] = tempkey
		if(i != 0){
			i -= 2
			}
		}
 }
 
 //Print out: [Game name] came out in [year] to confirm their ordering.
 print(" ")
 print("LIST SORTED BY YEAR:")
 for year in sortedyear{
	print("\(gname[dgamei[year]!]) came out in \(gyear[dgamei[year]!])")
 }
 
  //Find my most common game rating
  //Use switches since the ratings arent enumerated to keep track of them
for rating in grating{
	switch(rating){
		case "E": mostrating[1] += 1
		case "E 10+": mostrating[2] += 1
		case "T": mostrating[3] += 1
		default: print("Incorrect Rating")
	}
}

//Find out which rating is highest
var highestrating = 0
for( i = 0; i < mostrating.count; i += 1){
	if(mostrating[i] > mostrating[highestrating]){
	highestrating = i
	}
}

//Print out the correct rating and the number of games of that rating.
 print(" ")
 print("DETERMINING MOST COMMON RATING:")
switch(highestrating){
	case 1: print("The most common rating among my games is E with \(mostrating[1])")
	case 2: print("The most common rating among my games is E 10+ with \(mostrating[2])")
	case 3: print("The most common rating among my games is T with \(mostrating[3])")
	default: print("FAILURE")
}