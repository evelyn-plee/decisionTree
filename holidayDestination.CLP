(defrule holidayEnthusiast
=>
(printout t"Do you want to go on a holiday? (1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(holidayOn yes))
	else(assert(holidayOn no))))

(defrule noHoliday
(holidayOn no)
=> 
(printout t "You are a workaholic." crlf))

(defrule yesHoliday
(holidayOn yes)
=>
(printout t"Do you like sunshine holidays?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(sunshinePlaces yes))
	else(assert(sunshinePlaces no))))

(defrule noSunshine
(sunshinePlaces no)
=>
(printout t"Do you have freckles?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(haveFreckles yes))
	else(assert(haveFreckles no))))

(defrule yesSunshine
(sunshinePlaces yes)
=> 
(printout t"and the Beach?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(beachOn yes))
	else(printout t "I guess you prefer staycations." crlf)))

(defrule frecklesProblem
(haveFreckles yes)
=> 
(printout t"Like Parasol?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(aboutPictograms yes))
	else(printout t "Your destination is Banff, Canada." crlf)))

(defrule noFreckles
(haveFreckles no)
=>
(printout t "Your destination is Transylvania, USA." crlf))

(defrule yesPictograms
(aboutPictograms yes)
=>
(printout t "Did you know there are pictograms depicting parasols from Thebes dating back to 1200 B.C.?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(printout t "Your destination is Egypt." crlf)
	else(printout t "Your destionation is Bulgaria." crlf)))

(defrule yesBeach
(beachOn yes)
=>
(printout t "and Islands?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(islandOn yes))
	else(assert(islandOn no))))

(defrule noIsland
(islandOn no)
=>
(printout t "What if it's really close to mainland?(1-ok, 2-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(printout t "Your destination is Sicily,Italy." crlf)
	else(assert(paellaOn yes)))) 

(defrule yesIsland
(islandOn yes)
=>
(printout t "Spanish?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(assert(spanishOn yes))
	else(assert(spanishOn no))))

(defrule yesSpanish
(spanishOn yes)
=>
(printout t "Mojitos?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(printout t "Your destination is Cuba." crlf)
	else(assert(mojitoOn no))))

(defrule noSpanish
(spanishOn no)
=>
(printout t "Portugese?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(printout t "Your destination is Cape Verde." crlf)
	else(printout t "Your destination is Carribean." crlf)))

(defrule pickAtlOrMed
(mojitoOn no)
=>
(printout t "Atlantic or Mediterranean?(1-Atlantic, 2-Mediterranean)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(printout t "Your destination is Lanzarote." crlf)
	else(printout t "Your destination is Majorca." crlf)))

(defrule yesPaella
(paellaOn yes)
=>
(printout t "like Paella?(1-yes, 0-no)" crlf)
(bind ?x(read))
(if(= ?x 1)
	then(printout t "Your destination is Spain." crlf)
	else(printout t "Your destination is Greece." crlf)))