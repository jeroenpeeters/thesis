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
