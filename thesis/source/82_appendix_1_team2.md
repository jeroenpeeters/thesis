## Team 2 {.unnumbered}

Property        Value
------------    ---------
Date            02-12-2016 14:00
Duration        57 minutes
Present         ***I:*** interviewer
                ***B***: developer 1
                ***J***: developer 2
                ***R***: developer 3
Team members    20
Team size       Large
Project size    Large         

### Transcript {.unnumbered}

This paragraph contains the annotated transcript of the interview. Three developers took part. Since the interview was in Dutch the transcript is also in Dutch. Annotations are in English.

I: Waarom ik jullie hebt uitgenodigd is omdat wij als IQteam meer inzicht te krijgen in hoe de teams de huidige continuous delivery omgeving gebruiken, docker en alles wat daarbij komt kijken. We gaan alle teams af om te inventariseren wat de status is bij de teams en hoe ze de omgevingen gebruiken. Wat zijn de problemen, waar loop je tegen aan. Wat gaat er goed? Zijn er ideeen voor verbeteringen. Van alles en nog wat. Ik heb een vragenlijst waar we gedurende het gesprek doorheen gaan.

I: De eerste vraag is dan direct; welke problemen komen jullie tegen bij het gebruik van de huidige ontwikkelstraat, docker platform, in je dagelijkse werkzaamheden. Wat zijn belemmeringen waar je tegen aanloopt.

B: Resources. Physical resources, dus geen human resources. Diskruimte, ip-adressen. Maar ook beschikbaarheid. Performance, cpu. Dat soort dingen. Het is niet inzichtelijk. Je ziet niet wat de beperkingen van de resources zijn.

J: Details worden afgeschermd. Je hebt een host maar daar hoef je niet over na te denken. Maar op het moment dat er iets gebeurd weet je ook niet wat er gebeurd. Je weet niet waarom het niet opschiet of waarom het faalt.

I: En vind je dan het probleem dat je er niet zelf naar kunt kijken?

J: je hebt minder goed begrip van wat er eigenlijk gebeurd.

B: Ja.

I: Zouden jullie meer controle willen hebben? Zodat je zelf kunt onderzoeken waarom dingen mis gaan? En eventueel zelf kan fixen? Of zie je dat als iets wat het IQteam zou moeten doen?

J: Ik denk dat het handig is als we het zelf kunnen fixen. Nou... het probleem kunnen vinden in iedergeval.

B: Ja.

J: We willen beter inzichtelijk hebben wat de status van de host is.

B: Kijk jullie hebben bijvoorbeeld op je scherm al die notificaties. Zoveel procent diskusage, zoveel procent cpu, zoveel procent geheugen. Zo'n monitor zouden wij ook willen hebben. Ookal kunnen we er op dat momenet nog niets mee doen, je ziet gewoon aankomen dat er zometeen iets fout zal gaan.

I: Hoevaak komt zoiets dan voor?

B: Nou, laatste weken behoorlijk vaak.

I: Meerder keren per dag? Of 1x per dag?

B: Nou, als het 1x per dag faalt dan is het over. Dat is ook het probleem heh. Het is zo'n strategisch product geworden dat als het omvalt dan zit gewoon iedereen stil. Dat is dus in ons geval 20 man voor X-aantal uren.

I: Je bedoelt wanneer de Docker host omvalt?

B: Ja, dan kan bijna niemand iets meer doen. Er is geen Jenkins, geen conflunce, geen gitlab. niets. Dus je kunt helemaal niets doen. Twintig man zit dan stil. Het is vergelijkbaar met als we geen netwerk hebben. Of als we geen internet hebben.

J: Plus de aanloopuren. Het klapt er meestal niet in 1x uit, maar performance wordt steeds slechter. Dus dan ga je eerst uitzoeken waarom het niet werkt. Bijv. de ART faalt, dan ga je een timeout veranderen.

B: Ja het accumuleert. Normaal gesproken als je iets doet dan doe je dat rustig en je doet je werk. En dan is het twee uur later dan kijk je nog eens een keer. Als er dan iets begint fout te gaan dan ga je repareren. Dan ga je dit testen, en dat testen. En iedereen doet dat. Dus we zitten nu ineens met z'n zessen dingen te repareren die eigenlijk te maken hebben met timeouts, geen resources, alles is een stuk trager. Als de harddisk 80-90% vol zit dan krijg je een grote performance penalty.

I: Deze problemen die jullie hebben, hebben die vaak dezelfe oorzaak? Of is het telkens iets anders waardoor resources op zijn?

B: Er zijn twee oorzaken; diskruimte en ipadressen.

I: Maar waardoor loopt jullie diskruimte vol?

B: Images. Ik bedoel, we hebben in totaal 300Gig. Onze baseline zit op 200G. Dus blijkbaar is dat wat wij minimaal gebruiken. Bij 260G klapt het ding. We hadden dus heel weinig ruimte. Images die we continue maken, per stuk is dat 2Gig. Per set zijn dat 5-6 images. De meeste zijn kleiner, maar de grootste zijn rond de 2Gig. Dan praat je dus over per keer 10G.

R: Nu moet ik ook wel zeggen dat we net opruimen. Dat is wel iets wat we zouden moeten doen. We pompen maar bij en ruimen niets op. Net zoals met een kamer die je niet opruimt. Je kunt er wel bij blijven gooien maar op een gegeven moment houd het op. Dus daar zit ook wel een schone taak voor onszelf.

I: Misschien als dit probleem bij meerdere teams zit, dan is het misschien iets dat we centraal kunnen regelen. Of eenvoudiger zou kunnen maken

R: waar ik zelf aan heb zitten denken, en wat ik zelf fijn zou vinden, is om in plaats van een centrale oplossing een decentrale oplossing te maken. Dat schaalt natuurlijk altijd beter.

I: In welke vorm zou je dat dan willen zien?

R: Nou mijn natte droom is om Jenkins lokaal te kunnen draaien.

I: Maar waarom kan dat nu niet dan? Wat weerhoud je daar nu van?

R: Eeehhm... nou, de tijd ontbreekt het aan. Maar ook configuratie. Configuratie is nu nog centraal, dus die zou je dan beschikbaar moeten maken. Maar dat zou volgens mij wel kunnen, is volgens mij niet zo heel moeilijk. En ja, je zou Jenkins in een Docker container kunnen draaien natuurlijk. Maar je zit met de configuratie, die moet je centraal distribuereren.

B: Maar Jenkins draait toch al in een Docker container?

R: Ja, nee daarom. Dus het is volgens mij helemaal niet zo moeilijk. Alleen moeten we kijken wat we dan met de configuratie moeten. Die zou je dan eigenlijk ook willen versionen.

I: Ik probeer alleen nog te begrijpen wat nu precies het probleem is dat je hiermee probeert op te lossen? Er is dus een probleem met de availability van de bouwstraat. De vraag is of dit de juiste oplossing is.

R: Ja ik denk het wel. kijk als er centraal op een gegeven moment iets klant en niemand kan meer Jenkins draaien, dan zit je.s

I: Jenkins hangt natuurlijk aan al die andere systemen. Je gaat nog steeds naar de centrale Docker repository pushen. Als die vol zit, dan kune je ook niet zoveel meer met je lokale Jenkins.

B: Ja, je zou wel verder kunnen. Lokaal heb je je eigen registry. En je hebt natuurlijk alle caches lokaal; Docker, Maven, NPM.

I: Een beetje achtegrondinformatie, alle services die nu draaien in de ontwikkelstraat draaien op 1 resource pool. Dus als er iets met die pool aan de hand is dan vallen al vrij snel meerdere diensten om en heeft iedereen daar last van. Misschien zou je meerdere resource-pools willen hanteren waardoor je de essentiele services kunt scheiden van de volatile deployments?

B: Maar die hebben we al gesplitst. We hebben twee pools.

I: Uuhm. Ja in jullie situatie is dat inderdaad zo.

B: Die stap is al gezet.

I: Ja oke. En waar het nu fout gaat is op de plek waar al je applicatie instanties draaien.

B: Blijkbaar beinvloeden ze nog steeds elkaar.

I: De IP-pool wel ja.

B: Maar storage ook. Die 300G is voor beide hosts. Als die vol is werken applicaties uit beide compute-pools niet meer.

I: Ja, jullie zijn nu gemigreerd naar shared data storage, dus dat klopt. Wat er nog niet geimplementeerd is zijn quotas die je kunt opgeven per applicatie. Dus op het moment dat je een service start dan kan die alle resources gebruiken die beschikbaar zijn.

J: Dat is misschien iets waar naar gekeken moet worden. Het punt is een beetje; niet te groot team op een host. Of maximaal aantal gebruikers waardoor je power blijft houden.

I: Wat we dus missen is het limiteren van het aantal applicatie instanties die kunt starten en het limiteren van resources die elke instantie krijgt. Het voorkomt dat een enkele applicatie een host kan laten omvallen.

J: Ja, of als een host omvalt, automatisch herstarten zodat alle applicaties weer terugkomen.

I: Hoe gaan jullie nu om met het probleem dat de schrijfruimte volloopt?

B: Gewoon schreeuwen, vragen voor meer ruimte of hulp bij het opruimen en dan wachten...

I: Goed, over beschikbaarheid hebben we het dan al gehad. Even kijken...

B: We hebben wel een groot team, andere projecten zijn een stuk kleiner. Ons team is ook anders. Wij zijn volledig ge-Dockerized. Andere teams doen dat nog niet.

I: Jullie gebruiken dan ook geen andere virtuele machines?

B: Nee, nee. Al onze modules zijn allemaal in Docker. Daarom leveren wij dus per subsysteem een stuk of vijf of iets dergelijks. We hebben een paar van die subsystemen. Het aantal images, containers, is vrij groot als je het vergelijkt met andere projecten.

I: Dat is inderdaad wel interessant, daar gaan een aantal vragen over. Even over de grootte van het project. Om te kunnen vergelijken willen we weten hoe groot projecten zijn, hoeveel releases ze doen. Want je zegt 'wij zijn een vrij groot project', wat bedoel je dan?

B: We hebben twee teams, elke van 8 a 9 man. Plus overhead, zoals projectmanagement, performance tester en kwaliteitsmanager.

J: Stuk of tien developers totaal. Rest is tester.

I: aan hoeveel applicaties werken jullie? Of deelsystemen.

B: Stuk of zes. Plus alle tooltjes die er bij horen. De infra tool, graylog, activeMq, databases die erbij horen.

J: Wel wat meer denk ik zelfs.

I: Maar die bestaan allemaal uit 1 image, of meerdere?

B: Meerdere. Je hebt sowieso een applicatie en een database. En er zijn dingen die we delen, zoals de centrale logging. en ook de centrale queue.
Alleen, voor de ART starten we dus een eigen queue op. Want die mogen niet in de weg lopen met andere ARTs.

14:20

B dus per ART heb je sowieso minimaal drie.

I: Wat bedoel je met minimaal drie

B Nou de applicatie, ART en de queue. Ja. Volegns mij is het volgens mij.

R we maken branches.

B Ja dat is ook iets anders. We werken met feature branches. dat wil zeggen dat elk z'n eigen branche waar die aan werkt en dat tikt ook aan.

I maar hebben we het dan ook over zelfde aantal image releases en pushes.

B Ja

I Ook op een dag, of doe je meerdere keren pushen naar de registry?

B Continu. Eeh zodra je dingen wilt gaan testen. Het is wel zo dat als die images niet gewijzigd zijn dan hebben ze hetzelfde ID, maar dan hebben ze een andere tag.

J Ja dat helpt nu best wel veel. Plus dat we kleinere images hebben gecreeerd.

B Dus daar hebben we het een en ander ook geoptimaliseerd.

I: Ja. Je noemde al de ART. Kun je beschrijven hoe het test process bij jullie d'r uitziet. Hoe start je dingen op, hoe is dat geautomatiseerd?

J: In principe bouwen we.. We draaien hem eerst lokaal, gewoon protractor met ART scripts tegen een instantie van het dashboard. Dus meestal starten we dan eerst gewoon zelf instanties van de applicatie. Dan bouwen ze hun ding, checken ze in en pushen ze. Dan leveren wij de art container mee. Daarin zitten alle ART's maar ook alle files op het te draaien. Dan doen we docker run en dat is dan de ART die tegen een instnatie draait. Zodat ze hem ook gewoon bij de klant kunnen draaien. Dan hoeven ze niet ons systeem te hebben. Dat ding wordt dan door jenkins gedraait via het dashboard. De pipeline start de instnatie op, op het moment dat ie er is draait de art. De results worden gepushed naar een of andere instantie op het dashboard. Iets met reporting, uuh ja. En dan stop het weer als het goed is.

I: en dat is dan per deelsysteem?

J: Ja, per deelsysteem.

I: en dat hele proces loopt ook meerdere keren per dag?

J: Ja, dat loopt best wel vaak.

I: Hoe lang duurt het hele proces?

J: Kleine tien minuten om te bouwen, vijf a zes minuten voor een ART.

I: En dat is ongeveer voor alle deelsystemen gelijk?

B: Het is nog wel erg klein heh. Ik bedoel, wij zijn nog steeds aan het begin van het project. Al onze testen en ART's zijn nog in de beginfase. Het is nog niet het volledige product.

R: Het is ook niet echt stabiel.

I: Wat is precies niet stabiel?

R: Vooral de ART. Soms dan draai je hem een keer en dan gaat het goed, en de tweede keer gaat het fout.

I: Gaat het dan fout omdat er functionele issues zijn? Dingen die mis zijn in de applicatie, of technische problemen als in de applicatie komt niet online?

R: Heel vaak heefft het met timing dingen te maken. De ene container moet voorde andere worden opgestart. Vooral bij databases en dat soort afhankelijkheden. Dan duurt de ene weer iets langer dan de ander. Dan start een applicatie nog een keer op en heb je ineens twee berichten in je queue staan. Dat soort dingen.

I: Op die manier.

R: Dat heeft ook heel veel te maken met het feit dat het niet op elk moment even druk is. De resources die beschikbaar zijn flucturen en daardoor verschillen de testen. Dan krijg je timeouts vooral bij asynchrone processen.

J: Het vervelende is dat ie eerst een instnatie op het dashboard start, maar als dat te lang duurt dan timed 'ie out. Maar je gaat niet een kwartier naar het scherm xzitten staren, dus dan ga je iets anders doen.  Half uurtje later <<oh wacht even>>, hij is gefaald, waarom? Dan ga je zoeken. Oh timeout, ok. Build now, opnieuw. En dan weer een kwartier later. En als ie dan weer een keertje faalt moet je eerst wat dingen gaan afsluiten op het dashboard die dan blijven hangen. Dus ja, dan ben je zo al een uur  verder voordat je eindelijk weet of 'ie het doet of niet. En dat bij elkaar telt best wel op aan tijd en context switches. Je kunt niet doorwerken, je moet constant controleren of alles goed gaat. Dat vind ik heel lastig.

I: Ja, maar dat heeft er niet toe geleid dat je alles eerst lokaal draait om zeker te weten of het werkt?

R: Nou dat is het punt, zegmaar de <<eeh>> <<uuh>>.

B: Handmatig lukt het wel gewoon allemaal. Dat is het probleem niet. Het gaat om het geautomatiseerd testen, dat lukt dus niet. Dat was met vorig project toendertijd ook zo. Handmatig geen enkel probleem. Draai je zegmaar de testen op de achtegrond, <<bam-bam-bam>>. Fout.

J: De build service is toch altijd weer wat anders. We runnen die ART, hij doet het gewoon allemaal prima. Maar op de build server kan 'ie Chrome niet starten, sorry Firefox. Permission issues of zoiets dergelijks omdat ie een andere user meekrijgt. Ik weet niet precies meer wat het was, maar. En voordat je daar dan achter bent ben je zo een dag verder terwijl je daar eigenlijk niets hebt gedaan. Eigenlijk wacht op een build. Maarja hij moet eerst bouwen.

I: Dit is toch iets wat je dan maar 1 keer tegenkomt toch?

J: Ja maar je komt heel vaak zulk soort issues tegen. En dan ben je zo een week weg zonder dat echt iets gedaan hebt.

R: Vandaar dat ik ook zeg van, centraal zou het ook helemaal hetzelfde moeten lopen als lokaal. Maar omdat je lokaal niet kunt bouwen zegmaar, tenminse het kan wel en dat ga ik ook wel een keer proberen met een jenkins lokaal te draaien. Maar dat is gewoon een overgang. Altijd als je van omgevin veranderd en de omgevingen niet precies helemaal hetzelfe zijn dan krijg je weer een probleem.

I: Ondanks dat je zeg je, ook al draai je het via het dashboard en met Docker dan hangt het ook  nog een keer van de load af van de machine. Het ligt dus niet zozeer aan de configuratie van de omgeving maar van de load?

J: Ja

R: Ja, onder andere de beschikbaarheid van resources, Ja ja ja.

I: Er is nu al een splitsing in de resource pool voor ontwikkelstraat en applicatie deployment. Misschien zou het beter zijn om ook een resource pool te maken voor ART's?

R: Ja, zoiets ja. Dat je in iedergeval....

J: Of zorg dat er <eeh> snellere disk io is ofzo. Ik zie dat dat eigenlijk heel traag is waardoor je ook heel ander gedrag krijgt dan op je lokale machine. Een build duurt op Jenkins acht minuten, bij mij lokaal 1 minuut.

I: Ja dat is wel een fysiek limiet omdat dat ligt aan de onderliggende hardware. Dus daar is weinig aan te doen op de korte termijn.

B: Een goed voorbeeld is namelijk de Oracle database. We starten Oracle op en we vullen dat ding met referentie data. Op mijn PC duurt het laden ongeveer 30--35 seconden. Ik heb meegemaakt dat als ik dat op het dashboard draai dat het dan vijf minuten duurt. Kijk twee keer zoveel, <<mwah>>. Maar het verschil tussen 30 seconden en vijf minuten dat is wel echt een heel groot verschil. En het kan zijn omdat op dat ogenblik weinig resources aanwezig zijn. Kan zijn dat het traag is. Misschien gaat het over het netwerk.

J: Dat is dus lastig, want je weet dus niet waarom het traag is.

I: Die Oracle database hadden we getest op een host die rustig was. En dan had je hetzelde effect. Dus dat zijn echt gewoon hardwarematige limieten die je raakt. We draaien bijvoorbeeld niet op SSD's. We gebruiken wel enterprise level hard disks, maar die zijn niet zo snel.

B: Enterprise SSD's zijn ook veel te duur.

J: Maar dit is ontwikkelstraat gebeuren, we hebben geen enterpise grade disks nodig. Wat mij betreft ga je naar de mediamarkt en gebruik je een laptop als host.

I: Oke, <uuhm> de kwaliteitsrapportage, gebruiken jullie die om de kwaliteit te monitoren en te verbteren voor het projecT?

B: Ja, en sommige mensen zijn behoorlijk fanatiek.

<<gelach>>

B: Dus het wordt zeker gebruikt.

I: En hoe gaat dat? Hoe kijk je daar tegenaan? Tegen het gebruik van dat soort rapportages om de kwaliteit te monitoren?

B: Ik denk niet dat je dit aan een van ons drieen wilt vragen.

<<luid gelach>>

I: Maar gaat het dan om de kwaliteitsmanagers?

R: Ja, de kwaliteitsmanagers maar ook inderdaad het B en I bij ons in het team. Die zijn echt <<eeh>>, <ja>..

I: En waarom zijn die zo fan daarvan, zijn dat ontwikkelaars?

<jaja>

B: Die willen echt 100% hebben. Terwijl voor de meeste van ons voldoende hebben aan 80%.

R: 80% is heel mooi.

I: Ja.

B: dus het komt echt van binnenuit.

J: zij zien het echt als een sport om het goed te krijgen. En om 100% te halen, dat is dan gwoon een dingetje.

I: Maar vind je dan dat het bijdraagt aan de kwaliteit? Als je dingen ziet om de kwaliteitsrapportage, denk je dan van daar moet ik echt iets mee of eerder van daar kunnen we niets aan doen? Of dat zijn regels die we onzin vinden.

J: Wat mij betreft mag er nog wel een beetje een filtering overheen nog.

25:40
