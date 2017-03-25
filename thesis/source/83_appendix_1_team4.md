## Team 4 {.unnumbered}

Property        Value
------------    ---------
Date            x
Duration        x
Present         ***I:**** interviewer
                ***S***: developer 1
                ***J***: tester 1
Team members    3
Team size       Small
Project size    Small

### Transcript {.unnumbered}

This paragraph contains the annotated transcript of the interview. Three developers took part. Since the interview was in Dutch the transcript is also in Dutch. Annotations are in English.

S: developer
J: tester

I: oke, ik heb een vragen en en die gaan we gewoon even af en dan kijken we hoe relevant het is voor dit project.

S: klinkt goed toch

I: Ja, het eerste is om inzicht te krijgen in wat voor soort project het is. Waar werken jullie aan, wat is zegmaar de schaal. Hoeveel applicaties? hoe ziet het project er uit. In termen van aantallen applicaties. Waar werken jullie aan?

s: Het is een beheerproject. Het is twee jaar geleden gestart binnen de softwareorganisatie. Daarvoor lag het onderhoud bij grote ontwikkelaar 1. En daarvoor bij nog een andere club, geloof ik. Uiteindelijk is het bij de softwareorganisatie gekomen. In principe voor doorontwikkeling en beheer.

I: Ja

S: Voor alle applicaties die de inspectiedienst 1 in gebruik heeft. Het zijn eigenlijk twee grote applicaties. Waarvan er eentje een ouderwetse winforms applicatie is. Die andere is een webapplicatie voor de boeteafhandeling. Wat eigenlijk ook wat verouderde code is, maar wel web. En er hangen nog wat randapplicaties omheen. Pak en beet is het zegmaar een half miljoen regels code, in die orde van grote.

I: En het is allemaal dot net?

s: Allemaal dot net, ja. Het is allemaal C#, wel verschillende technieken daarbinnen dan. En SQL server als database.

I: en als je kijkt naar, ik weet niet of dat bestaat hoor, een standaad dot net project. Wijkt jullie project daarvan af? Of volgt het gewoon de geldende richtlijnen voor dot net projecten?

S: <<gelach>> Nou, het is niet de beste code die we in beheer hebben. Historisch gezien ook. Ehm, dat is denk ik niet zo het probleem. Het is vooral het probleem dat het zoveel verschillende applicaties zijn die bij verschillende partijen geleeft hebben. Er zijn gewoon heel veel verschillende smaakjes gebruikt. Een manier om een database te benaderen dat is zes keer opnieuw uitgedacht. Dat maakt het lastig. Voor de rest is het vrij standaard dot net, geen exotische dingen.

I: Ok

S: Het is ook niet zo'n hele spannende applicatie eigenlijk.

I: Nee, je zegt het is dan doorontwikkeling en tijdelijk beheer? Of? Wat zij je precies daarvoor?

S: Het is gewoon, <<eh>>, ja beheer. Er komen wensen binnen...

I: Wie doet de hosting?

S: hostingpartij 1

I: Ok.

J: Die ken je?

I: Nee die ken ik niet, maar dat is...

I: hostingpartij 1 is volgens mij, ik weet 't niet zeker hoor, een van de grootste overheidspartijen.

J: Het is in elk geval geen interne afdeling zegmaar. Wij doen zelf niet de hosting.

I: Hoe gaan jullie om met zaken als continuous delivery? Doen jullie daar aan? En dan misschien niet tot aan productie maar misschien tot aan een test of acceptatieomgeving.

S: Wij hebben bij de softwareorganisatie intern een omgeving. Die soort van representatief is met de productieomgeving van de project klant. Bij hostingpartij 1 dan.
Daar kunnen wij, naja, het is nog niet helemaal continuous delivery. Met 1 druk op knop kunnen wij het hele landschap, zo'n tien applicaties, met een druk op de knop uitrollen.
Naar elke gewenste versie die wij willen.

J: Dan tevens de ART's er achteraan laten draaien. Dus in zoverre zou je het wel continuous integration kunnen noemen. Denk ik.

S: Ja, maar er is altijd een handmatige actie nodig. We hebben geen nightly build ofzo.

J: Nee, en ook niet dat automatisch als jij nieuwe code incheckt dat dan het hele riedeltje gaat lopen.

S: Ik moet zeggen van nou, ik wil hier een nieuwe versie van maken. Dan krijgt het een nieuw nummertje enzo.

J: Ik als tester moet dan zeggen, nu deze versie deployen. En dan...

I: Kun je zelf een nieuwe versie deployen?

J: Ja.

I: Dus het is gewoon echt inchecken, dan wordt het automatisch gebouwd, neem ik aan.

S: <mm mm>>

I: En dan is het dus met een druk op de knop deployen en het uitvoeren van de testen.

J: Ik druk op de knop execute, en dan start de deploy.

S: Naar de <ehh> klant kant zegmaar, dat <uuhm> moeten we een paar handmatige stapjes voor doen. Maar hetzelfde ding wat wij automatisch deployen dat leveren we op dan. Met de configuratie al voorgemaakt zegmaar, voor hun omgevingen.

I: En wat is dat dan voor <eh>. Wat lever je precies op?

S: In principe alle binaries gewoon. Applicaties. Maar daarbinnen zit een mapje met alle configuraties voor de verschillende omgevingen. Die staan dan helemaal goed.

J: Hun machine namen..

S: Dus zij moeten het even kopieren, overschrijven en dan werkt het. Zij hoeven daar niets meer aan te configureren als het goed is.

I: Ok

J: Maar het deployen daadwerkelijk deployen of neerzetten van die applicaties op hun omgeving is wel een handmatige actie aan hun kant. Op dit moment nog.

S: Ja, dus stel die tien a twintig applicties moeten zij wel een voor een copy pasten, ja. En databases restoren en scripts uitvoeren moeten zij allemaal als losste stappen doen.

J: En voor een van de volgende sprints, <ehm>, story op de planning staan in de nabije toekomst om ook dat stapje bij hun geautomatiseerd te kunnen gaan doen.

I: Ja, want levert dat soms problemen op? Of gaat het eigenlijk altijd wel goed?

s: Sinds wij die configuratie al helemaal klaarmaken voor hun, gaat het meestal wel goed.

I: Meestal.

s: Meestal. Nog niet 100%.

J: Het is nu voornamelijk een issue dat het ze gewoon nog veel tijd kost om zo'n installatie te doen. Ik denk dat ze er zo een ochtend mee bezig zijn.

S: Ja, misschien wel ja.

J: een dagdeel ofzo zegmaar.

S: In principe werkt het bij ons, hun omgeving is bijna identiek. Dus die scripts die wij gebruiken om het uit te rollen, dat kunnen zij volgens mij ok gewoon gebruiken. Binnen nu en volgende sprint denk ik, in principe.

J: In principe staat 'ie voor de volgende sprint. In de nabije toekomst gaan wij die scripts gereed maken zodat zij ze ook kunnen gebruiken.

I: Ja, en hiervoor. Toen jullie nog niet de configuratie volgens hun systemen opleverde, waren er toen meer problemen?

S: Ja, voor ons was het ook veel meer werk. Elke configuratiewijziging moesten wij documenteren dan. En die moesten zij dan weer gaan toepassen. Documentatie lezen, van oh dan moet ik zeker dit doen. Dat ging vaak fout.
Nu documenteren wij het niet meer, wij passen het gewoon toe. We vragen aan hun wat de waarde bij hun moet zijn en passen het toe in onze codebase. En klaar. zij hoeven er verder niet meer over na te denken.

I: En wat voor configuratiewijzigingen zijn dat dan?

S: <eeh> Nieuwe server endpoint ofzo, database endpoints. Dingen die er bij komen, koppelingen met andere databases. Dat soort dingen. Of instellingen voor nieuwe rechten.

08:15
