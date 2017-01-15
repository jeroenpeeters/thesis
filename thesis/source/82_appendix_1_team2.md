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

J: Wat mij betreft mag er nog wel een beetje een filtering overheen nog. Soms is het rood omdat een regressietest faalt, opzich goed hoor. Maarja dat is logisch als je net toevallig die... of iets heeft een paar dagen niet gedraaid, ja als je nix gepushed hebt naar master ofzo dan is 'ie rood. <<tja>>. Dat is niet technisch maar dan moet je wel allemaal weer uit gaan zoeken. Enne, bijvoorbeeld van die dependency checks en dergelijke moet je elke keer weer checken of daar iets is gewijzigd. Van mij mag het wat pragmatischer. Vind het goed voor de lange termijn maar je wordt wel wat door daar elke dag naar te kijken, ja er is niets gewijzigd. Ja er is niets gewijzigd. Ja het is nog steeds rood. Maja..

R: Ja goed, het punt  op een gegeven moment is natuurlijk er is een heel groot verschil <<eh>> gat tussen kwaliteit die daar gemonitord word en echte kwaliteit, zegmaar. En dat is <eeh> dat gat is enorm. En ja goed. Vaak wordt dan wel. Ja het is kwaliteit op het laagste niveau. Het is gewoon hoe netjes een muur gemetseld is maar het is niet of het gebouw is <eh> dat nog enigzins functioneert. Zegmaar. Maargoed dat heb je met alle rapportages. Zeker als het percentaegs zijn, Iedere manager gaat daar helemaal op nat zegmaar. <eeeeh> <gelach>. Zovan, dat moet 100% zijn. Weetjewel. Maargoed daar doe je verder niets aan. Dat zegt niets over de of die rapportage tool niet of wel nuttig is. Ja die is nuttig. Het probleem is alleen op een gegeven moment van hoeveel tijd ga je er in steken om dat allemaal overeind te houden. Ten kosten van sommige structurele zaken die je zou kunnen oplossen. Zegmaar in die tijd. Hoe is de structuur van je applicatie op hoger niveau. Daar zou wat meer focus op moeten zijn in plaats van dat lage niveau.

J: Het is nuttig maar erg bureaucratisch.

R: <ja>

J: Maargoed, die tool op zich doet het wel goed volgens mij, die kwaliteitsrapportage tool.

I: En Sonar is daar natuurlijk een onderdeel van, daar kijken jullie ook zelf naar? De issues die daar uit komen?

J: Ja, ja.

I: En dat is dan ook een driver om dat te verbeteren over het algemeen.

B: Ja.

R: Jawel.

I: Hebben julie daar ook afspraken met jullie product owner over gemaakt. Zovan we willen elke sprint, weet ik veel, iets doen om kwaliteit te verbeteren of om achterstallige kwaliteits issues op te ruimen, dat soort dingen.

R: Ja soms dan beginnen we wat lager. Aan het begin van het project begonnen we op vijf procent. We hebben gezegd elke sprint gaan we hem omhoog zetten die grens. Dat hebben we wel gedaan.

I: En dat hebben jullie ook afgesproken met de product owner of is dat iets dat jullie zelf tussen de bedrijven door hebben geprobeerd?

B: Het komt wel meer van ons intern, vanuit Ontwikkelorganisatie.

I: Ja, dat snap ik maar je moet natuurlijk die tijd die je er aan besteed ergens verantwoorden. Want dat gaat ten koste van andere dingen.

B: <<ja, ja>>

R: Wat ik wel heel interessant is en wat ik geopperd heb. Jongens ga nou eens monitoren hoeveel procent <eh> van je tijd je bezig bent met het onderhouden van van van geautomatiseerde testen. Versus tijd die je aan productiecode spendeerd. Maar.. maargoed.. Mijns inziens is die verhouden een beetje zoek. Dat zou je nou eens een keer moeten monitoren. Dat is interessant.

J: Ja het is echt een verschikkelijk kostbaar iets.

R: <ja>

J: Plus in combinatie met de hele kwaliteits, dat je de <eeh>. Alles bij elkaar.

R: Want ja je unit test moet 100%. Je heh, integratietesten dat is bijna hetzelfde inderdaad. ART 50%.

I: Ik heb wel eens gelezen dat dat ongeveer 50/50 moet zijn. Zou je zeggen van dat gaat echt ver er overheen? of?

<gemompel>

J: Heel ver er overheen.

R: Ik denk de ART inderdaad wel,<ja ja ja>

I: En komt dat dan doordat, weet ik veel. De tools die jullie gebruiken of dat de ART tool heel ingewikkeld is. Of is dat omdat je superveel dubbele testen aan het schrijven bent?

R: <zucht> Ja ik denk vooral op een gegeven moment dat 'ie gewoon onstabiel is die ART.

I: Het is gewoon het uitzoeken van...

R: Ja meestal wel. Dan <eh> shit nu is 'ie rood en net was 'ie nog groen. Hoe zou dat nou toch komen. Ja dat is best wel moeilijk om achter te komen vaak. Vooral als het een timing issue is. dus <eeh> Het geautomatiseerd testen vooral de ART. De unit testen <eeh> ok. Die kosten misschien best wel veel tijd om te schrijven maar die zijn daarna altijd stabiel. Zolang je maar binnen de <ehm> <ehm> applicatie proces blijft met je geautomatiseerde test. En niet asychroon gaat werken, zegmaar. Dan <eh> is het wel redelijk stabiel. Dan is het gewoon toegevoegde waarde. Maar inderdaad zo'n ART test met een externe database en timing gebeuren.

I: Zie je dat het instabieler wordt naarmate de omvang van code en testen groeit? Of is dat vanaf het begin eigenlijk al zo geweest?

R: Ja dat is vanaf het begin af aan zo geweest volgens mij toch?

I: Zou je zeggen dat als de ART faalt, dat dat vaker het geval is door die synchroniciteits issues of performance issues dan dat er daadwerkelijk een functioneel probleem is?

R: <ja!> Ik denk dat ongeveer 95% omgevingsproblemen zijn ja.

I: Dat is erg interessant want dit wil je natuurlijk niet.

J: Het is ook als je iets wijzigd aan het landschap. Als je iest verranderd dan vallen de ART's weer om en dan moet het bijgewerkt worden. Voordat het allemaal weer goed is dan is er wel weer iets veranderd.

I: Ja

J: ze zouden eigenlijk wat later meoten beginnen met de ART's.

B: Even iets anders.... Weet je zeker dat de opname loopt.

I: Ja ja ja ja.

<gelach>

I: Heel goed dat je er aan denkt. Ja hij loopt nog. Nee hij loopt nog. Dank je wel.

B: Ik heb al een keer meegemaakt dat je er na een half uurtje achterkomt; hij heeft toch niet opgenomen.

I: Nee het werkt nog, als het scherm uitgaat dan doet 'ie het nog.

I: <uuhm>. Ja over test cases en het administreren daarvan. Logical testcases enzo. Jullie gebruiken daar ook Jira voor? Hoe verloopt dat?

R: Oeh, dan moet je denk ik even een afspraak maken met Niels. Dat zijn echt de testers die daar over gaan. Daar doen wij niets aan heh?

B: Het meeste wat wij doen is draaien en als er iets fout gaat dat proberen te fixen.

I: Ja precies.

B: De hele administratie daaromheen, sowieso ook de BIRT rapportage en Jira dat doen wij niet.

I: Oke, dan gaan we die vragen skippen. dan zal ik contact met hun opnemen.

B: Volgens mij is dat ook hetzelfde als met andere projecten.

I: Nou, nee. niet altijd hoor. Maar jullie hebben echt dedicated testers in jullie team?

B: Maar die administratie is hetzelde.

I: Bij andere teams zijn er ook ontwikkelaars die testen en dus ook de test administratie bijhouden. Dat is dus niet perse overal hetzeldfe. En ook hoe dat is ingegericht kan ook wel verschillen. En de problemen die daar eventueel uit voortkomen.

B: ok

I: <eehm> Oja, ik had ook nog een vraag eerder. Als er nou een nieuw teamlid joint. Een ontwikkelaar. Hoe krijg je ze dan eigenlijk. Want het is denk ik best wel complex misschien de hele ontwikkelomgeving en hoe dat allemaal samenwerkt. Hoe krijg je ze dan up to speed? Hoe laat je ze kennismaken met de hele omgeving?

B: Hier heb je Docker.

R: Docker compose up

<gelach>

I: Maar zou je zeggen dat dat helpt? Gegeven eerdere ervaringen met andere projecten. Helpt de opzet zoals we die hier hebben om sneller met een proejct up to speed te komen of maakt het totaal niet uit? Of werkt het zelfs averechts?

R: Ja, Heb je het dan vooral over de inrichting van je omgeving.

I: Bijvoorbeeld.

R: Niet de kennis opbouw. Daar hebben jullie volgens mij niet direct...

I: Nouja, kijk als je bijvoorbeeld geen Docker hebt dan. Nu gebruiken we docker. Dus Docker kennis is wel handig. Terwijl als je dat niet hebt dan hoef je die kennis niet te hebben.

B: We hebben allemaal een eigen IDE, de is vrijblijvend. Dus iedereen heeft z'n eigen keus. Directory structuur is vrij. Operating system is vrij. <eehm>

I: Maar heb je de server ook gewoon geinstalleerd en zelf de configuratie gemaakt of gebruik je Docker images?

B: Ja docker images. Wat we doen is namelijk <eh> ja. Je kunt lokaal nog steeds buiten Docker je applicatie draaien. <eehm> Maar dat is echt vaak gewoon alleen om kleine dingetjes te testen.

J: Ja

B: Met maven builden we al images. Dus met extra parameter heb je allemaal images. en dan run je je Docker instantie, je hele set.

I: En is dat een fijne manier om te werken? Want ik kan me voorstellen dat je soms ergens mee bezig bent en dan wil je heel snel achter elkaar testen of het al werkt.

B: Shortcuts maken. Dus eh. Een andere manier bedenken om te versnellen.

R: Ik had wel het idee inderdaad dat de eerste paar keer dat ik echt gewoon <eh> nadat ik unit en integratietesten had geschreven en ik wil het gewoon even proberen dan draai ik het wel gewoon in een applicatiecontainer. Meerdere keren een container opstarten en debuggen dat schiet niet op.

J: Dat is juist eigenlijk ook het grootste vervelende aan hoe we dat met Docker containers doen. Want als je aan 1 deelsysteem bezig bent moet je gelijk drie andere starten. Drie andere containers. Vaak moet je dan ook even een versietje updaten of even pullen. Of wat dan ook. En dan moet je die even bouwen. Of. Voordat je hem uiteindelijk draaiend hebt en echt kunt testen wat je doet ben je zo een kwart... zo een tijd verder.

B: Wat ik doe is, ik kopieer een war file naar een docker container. Hot deploy. In een draaiende container. Maar dan nog steeds. Je moet een hele war bouwen, je kunt niet rechtstreeks code daar wijzigen.

J: Dat doe ik dus wel door in IntelliJ gewoon explode war en dan een hot reload.

I: Eigenlijk heeft iedereen daar ook z'n eigen oplossing voor. Hoe dat lokaal het beste werkt.

R: Ja

B: Ja

R: Wat ik zelf nog ontzettend fijn vind is dat ik met een lokale DNS werk. Dat werkt ontzettend goed. Met Docker DNS.

J: Bij mij doet 'ie het niet meer.

I: Zou daar hulp bij nodig zijn, het lokaal de omgeving inrichten, of? Misschien kijken hoe iedereen het doet en daar een tiplijst van maken?

B: Maar dat doen wij dus ook. Je kijkt bij iemand anders. Oh, je hebt het op die manier. Nou ik vind die van mij handiger.

J: Maar dat ligt er helemaal aan aan welke deelsystemen je werkt of wat de hoofdmoot van je werk is. als je puur <eh> REST API werk doet dan is veel interessanter om even een war in je eigen service container te draaien. Ben je vooral met de frontend bezig dan ben je vooral geintereseerd in NPM. Dan zou je Docker niet eens draaien.

B: Precies, GP doet dat ook niet. Die heeft gewoon z'n eigen appicatie draaien, daar test hij alles op.

R: Wat ontzettend zou helpen is als je <eeh> iedereen gaat dadelijk z'n eigen laptop mee moeten brengen (notitie: Ontwikkelorganisatie gaat over naar BYOD). Enne, Docker werkt gewoon nog steeds veel en veel beter odner Linux. En, het probleem is zegmaar vanwege security richtlijnen moet je een encrypted distributie hebben. En ik heb nog niet kunnen vinden hoe nou een dual boot kunt maken waarbij je de nieuwe linnux distro die je er langs zet encryp.t als jedaar een standaard oplossing voor bedenkt dat je een enorme boost geeft aan de productiviteit. Nu zit de ene op Mac ander op windows en de ander zit op Linux. zegmaar. Ik zie dat met Mac ontwikkelen zitten ze met de DNS te kloten. Daar kun je volgens mij geen lokale DNS op draaien. Ja andere mensen werken op Windows, dat is ook neitecht fantastisch samen met Docker. Dus als je mensen zou willen helpen, dan zou je daar een oplossing moeten bedenken.

I: Oke, genoteerd.

R: Dat is misschien meer iets voor systeembeheer, maar ik benoem het hier.

I: Of misschien een dekstop-as-a-service? Een remote desktop achtig iets.

J: <uuuhm>

<gelach>

I: Goed. Nu dat je dat dashboard hebt, daar kun je mooi je eigen applicatie starten in  de ontwikkelomgeving. Jullie weten wel hoe het er eerst aan toe ging, dat de ontwikkelomgeving meer gestandaardiseerd was eigenlijk. Je kreeg gewoon een standaard Jenkins op een bepaalde manier geconfigureerd en daar kon je zelf vrij weinig aan doen. Nu heb je veel meer vrijheid. Eigenlijk alle vrijheid om diensten te starten die je nodig acht tijdens het ontwikkelrpoces. Maken jullie daar ook gebruik van? Of is de standaardtoolset, Jenkins, Gitlab, Sonar, Nexus met Docker registry dan erbij, is dat voldoende?

J: Eigenlijk wordt er eigenlijk geen gebruik van gemaakt. Die instanties draaien en er zit nooit meer iemand aan. Keer proberen een nieuwe versie te draaien, maar maakt het wat uit. Je zit zo snel in het vaarwater van de rest van het team.

I: Maar ook bijvoorbeeld Jenkins plugins. Jullie hebben nu alle vrijheid om plugins te installeren.

J: Ja dat durven we ook niet want dan zijn we bang dat er <eeh> de pipeline omvalt.

R: Nouja..

I: Jullie maken gebuik van Jenkins 2 en Jenkinsfile toch?

J: Ja.

I: Maar dat is ook iets, dat is door iemand anders bedacht zegmaar?

B: Ja. Door R. Door R opgezet.

I: Daar doen jullie nu dan niets aan? Dat draait?

B: Onderhouden. Want er zijn uiteraard. Er komen nieuwe subsystemen bij. Er zijn wijzigignen die wij willen hebben, dat het zich net iets anders gedraagd. Dat soort dingen.

I: Ja.

B: Dus we onderhouden het wel, maar het is wel opgezet door R.

I: Hoe zouden jullie je kennisniveau van Jenkins inschatten? zijn jullie experts?

B: Jenkins as is, nee. Wat we onderhouden is inderdaad die Jenkinsfile en hoe de pipeline zich gedraagd. De rest van Jenkins laten we staan. Maven plugins, welke versies. Ik weet waar ze staan. Voor het laatst heb ik drie maanden geleden gekeken.

J: Ja er zijn een hele boel die moeten geupdate worden. Tenmisnte die kunnen geupdate worden. Maar dan ben ik bang dat het omvalt.

B: Wat dat betreft is onze productieomgeving veel belangrjiker dan tweaken dat het up to date blijft of wat dan ook. Voor ons is het gewoon productie. en productie is belangrijker dan features. Zo zie ik dat.

I: Maar wat vind je van het feit dat de verantwordelijkheid voor het onderhouden van de hele ontwikkel en bouwstraat bij het ontwikkelteam ook neer te leggen in plaats van bij een beheerteam die dat onderhoud.

J: Echt superfijn, maar dan voor een klein project. Voor een groot project wordt het te groot waardoor je niet... Of dat moet je 1 iemand hebben die dat doet. Dan heb je in principe je beheerclubje binnen je grote team.

R: Ja bij ons is de discussie nu een beetje van. eerst waren er mensen extern voor. Zegmaar. die zijn eigenlijk weg gegaan zegmaar. Fijner zou zijn geweest dat ze niet weg zouden zijn gegaan. Maar gewoon in het team verder zijn getrokken. Veel mensen hebben nu het gevoel van ik kom niet meer aan programmeren toe. Ik ben eigenlijk 80/90% van m'n tijd bezig met het onderhouden en beheren van de buildstraat.

B: Beheren, echt systeembeheer.

R: Ja dus.

I: Wat voor systeembeheer taken zijn er dan zoal?

B: Onderhoud van die pipelines. Onderhouden van de omgevingen. Ontwikkelen nieuwe feautres. Als je iets wil, vroeger konden we dat uitbesteden aan R. Opzetten van nieuwe omgevingen of tooling. We zijn aan het experimenteren met Nexus drie. En nu op dit ogenblijk, alsjeblieft niet er aanzitten. Want dan valt het om.

I: Het idee is natuurlijk, als ontwikkelaar, weet je het beste hoe je je build pipeline ingericht wilt hebben en hoe je dat kunt streamlinen. Dus je hebt nu ook de vrijheid om te zeggen van, Jenkins, ik wil dat niet gebruiken. Ik wil een andere tool gebruiken. Of ik wil alles in Gitlab gaan doen. Die vrijheid is er.

J: Maar dan moet je eerst als team wat op kunnen bouwen. Het ging van nul naar honderd in het begin en daardoor is het boven ons hoofd gegroeid en nu. We zijn ook heel veel bezig met fixen fixen fixen! Brandjes blussen In plaats van als team dat je er langzaam naar toe groeid waardoor het beter past. Dat is een beetje.

I: Dus in het begin is er teveel van buitenaf gepushed in een bepaalde richting?

J: Zeker, dat idee heb ik tenminste.

R: Ja ik heb daar zelf niet zo heel veel moeite mee. Ik ben zelf ook iemand die, ik voel me meer een generalist. Maakt me niet zoveel uit of ik nou aan het programmeren ben of met Dockerfile aan het werken ben. Of aan de build pipeline. Zegmaar. Maargoed, andere mensen vinden het veel fijner om gespecialiseerd ergens mee bezig te zijn.

I: Ja

R: Ik denk wel dat het goed is dat een team z'n eigen toolset kan kiezen. Want dat testx zegmaar dat <eh> is erg opgedrongen van buiten. Tenminse, zo heb ik dat ervaren. Vooral het werk met Excel sheets heeft echt tot problemen geleid. Het argument want ik daar voor aanvoerde zegmaar werd van tafel geveegd. Tot op het moment dat het niet meer werkte. Als je een teampje van vier hebt, en je hebt 1 tester. die alleen maar die testen beheerd. prima. Maar als je een groot project hebt en je gaat met branches werken, dan is het hel op aarde op een gegeven moment.

J: Als we geen ART zouden hebben met TestX, maar gewoon dat de developers gewoon met protractor end-to-end tests zouden schrijven dan waren we een fractie van de tijd kwijt geweest denk ik.

R: Ja, ja. Nu hebben we YAML als formaat. Dat werkt volgens mij ook wel aardig.

J: Als ik zie hoe eenvoudig in principe een protractor script is, is het veel makkelijker dan zo'n hele testX met functions, dingetjes, excelletjes. Dan zit de configuratie een gedeelte in testx en gedeelte reporter, gedeelte protractor, webdriver, selenium. Allemaal bij elkaar, en kijken wat is nu wat en hoe speelt het samen. En welke versies. Vind ik best wel ingewikkeld.

I: Jullie hebben dedicated testers in het team, wat volgens mij geen technische mensen zijn? Het hele TestX is natuurlijk verzonnen zodat dat niet technische mensen testautomatisering kunnen doen. Vind je dat dan dat je dedicated testers hebt eigenlijk niet fijn? Had je liever het testwerk gewoon onder de developers. En dat je dan bijvoorbeeld twee extra developers had gehad?

J: Ja dat is lastig. Mijn persoonlijke mening is als je dus dedicated testers moet hebben. Dan zou een developer ook helemaal niks te maken moeten hebben met die ART. Want daar heb je dus die functionele mensen voor.

I: Ja inderdaad, maar in de praktijk is dat dus niet het geval?

J: Nee.

I: Want wat moeten jullie dan doen voor hun? Moeten jullie TestX uitbreiden? Of wat is jullie werk?

J: Uiteindeljik moeten we de ART's werkend houden. Docker infrastructuur onderhouden
