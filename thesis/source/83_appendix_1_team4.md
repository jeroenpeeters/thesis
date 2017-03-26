## Team 4 {.unnumbered}

Property        Value
------------    ---------
Date            19-12-2016 14:00
Duration        1:10
Present         ***I:**** interviewer
                ***S***: developer 1
                ***J***: tester 1
Team members    4
Team size       Small
Project size    Small

### Transcript {.unnumbered}

This paragraph contains the annotated transcript of the interview. One developer and one tester took part. Since the interview was in Dutch the transcript is also in Dutch. Annotations are in English.

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


I: Ja ik heb verder geen idee hoe je een dot net applicatie deployed. In dit geval zijn het gewoon executables die je

S: Ja in principe alles staat al ingericht natuurlijk, dus voor de bestaande applicaties kun je gewoon de binaries vervangen. Voor de website moet je voor IIS de webserver wel even aangeven van ik wil een website hebben op dit adres en hier staan de binaries zegmaar. En deze authenticatiemethode zijn nodig. In principe is dat eenmalig nodig. En dan kun je daana gewoon die bestanden vervangen als je dat wil.

I: Want als je een nieuwe lege windows server zou krijgen, wat moet er dan nog geinstalleerd worden? Want je zij ik kan hier ook intern met een druk op de knop deployen, maar zou dat ook kunnen naar een verse windows server installatie?

s: Onze scripts wel, nouja vers. Als er maar IIS op staat.

I: Oke, dat is de enige afhankelijkheid? en de scripts doen de rest?

S: Ja, de scripts doen  de rest die configureren ook IIS bij ons.

I: En wat voor scripts zijn dat dan? gewoon bash?

S: Nee powershell.

I: Powershell, ja natuurlijk. Allright <ehm>, ja met hoeveel ontwikkelaars zijn jullie in het team?

s: Drie.

I: Een tester of twee testers?

J: Een tester, drie (ontwikkelaars) en een tester. Ja

S: en in principe informatieanalyse (fluisterend: voor zover we dat doen). Dat ligt bij de klant.

I: Oke, <ehm> ja de vragen zijn wel erg toegespitst die van onze infrastructuur gebruikmaken. Want ja, we weten dat daar wel problemen mee zijn. dus een van de vragen is welke problemen kom je tegen in eht dagelijhks werk. maar ik weet niet of dat bij jullie aan de hand is. Is de tooling eigenlijk goed op elkaar afgestemd?

S: Van het iq-team bedoel je?

I: Nee, wat jullie gebruiken aan tooling zegmaar. Om de ontwikkelstraat in te richten, dagelijks je builds te kunnen doen, automatische builds te kunnen doen.

S: Ja dat werkt opzich wel.

I: Wat gebruiken jullie daarvoor?

S: <ehm> TFS.

I: Gewoon TFS?

S: En maatwerk.

J: Dus TFS en dan zegmaar al die powershells die daadwerkelijk de deployment doen. Die zijn door de voorganger ontwikkelaar in elkaar gezet. <ehm> Dus ja dat werkt goed.

S: Ja TFS die roept een paar van die powershells aan na zo'n build. En we hebben ook een eigen websiteje gemaakt waar J, en wij ook, die deploys mee doen.

J: Die roept ook powershells aan.

S: Ja die roept uiteindelijk ook weer powershells aan. Scant gewoon mappen naar bepaalde versies die daar staan. En dan kun je die gewoon kiezen en deployen.

I: Over hoeveel powershell code hebben we het dan? Paar honderd regels of een paar duizend?

s: Ik weet het niet precies. Vijfhonderd ofzo, ik gok maar wat hoor. Zoiets. Misschien iets  meer. Maja, zoiets zegmaar. Tot duizend.

I: En het testen, de automatische testen. Waar zijn die in geschreven?

J: <eh>, ik maak gebruik van TestX protractor en TestX.

I: Nou dat is toch nog een dingetje dan <gelach>

S: Nou..

J: gedeeltelijk.

S: Als je het echt wilt weten.

I: Ja ik wil het echt weten.

S: Het was niet onze keus.

I: Ok.

S: Maar het is echt gepushed.

I: Vanuit? Door de ontwikkelorganisatie?

S: Ja.

J: Ja. Toen wij begonnen, of toen ik begon in iedergeval was echt nog het standpunt  van de organisatie van het moet TestX zijn want dat is nou eenmaal onze standaard.

I: Ok.

J: Inmiddels staan ze meer op het standpunt van laten we per project kijken wat werkt. Maar wij hebben best wel veel maatwerk, eigen specifieke keywords moeten ontwikkelen in Testx protractor om al onze testjes te kunnen uitvoeren. En dat heeft voor een deel gewoon te maken met dat die applicaties verouderd zijn. En nooit ontwikkeld zijn om geautomatiseerd te kunnen testen.

S: Ja het werkt met rare popups en iframes en allemaal dat soort dingetjes. Het werkt gewooon niet lekker.


J: Nee. en anderzijds denk ik ook dater nooit een goedo nderzoekje gedaan is naar is dit nou de tool om deze applicatie mee te testen. We zijn nu bezig met een stukje nieuwbouw. Dat is eigenlijk om de bestaande applicaties als Angular webapplicatie na te bouwen. Gebruiken we ook weer TestX en dan zie je dat dat veel beter aansluit. Vooral omdat protractor specifiek bedoeld is om Angular webapplicatiss mee te testen. En dan zie je dat zo'n tool wel geschikt is. Terwijl dat voor die ouwe meuk van ons gewoon niet geschikt is. En dat dat eigenlijk ook heel veel capaciteit bij onze developers gekost heeft om die keywords zo te maken dat ze met de quirks van onze applicaties kunnen omgaan.

I: Kan jij zelf keywords maken? Of dat niet?

J: Nee. Nee. nee.

I: Ok. En gebruik je dan de Excel integratie?

J: Ja, ik weet wel dat, hoe het het ook alweer. Yaml. Dat er een andere methode was.

I: Ja.

J: En toen dachten wij van nou met de hele berg aan excellen die we al hebben liggen zijn we waarschijnlijk twee jaar bezig om dat om te bouwen en om te zetten. En in gedeeltelijke oude applicaties die waarschijnlijk ooit wel uitgefaseerd gaan worden. Dat App1 hopen we niet heel veel testen meer voor te hoeven schrijven.

S: Ja, App1 is weer een andere tak van sport. Is winforms. Daar is TestX niet zo goed mee.

I: Nee, winforms is gewoon een native windows applicatie?

S: Ja, zegmaar native windows applicatie op zelfs hele oude techniek. Maar dat kan TestX niet zo goed. Of protractor.

I: Nee, dat is webbased, dus ja.

S: Daar heeft iemand, die ken je denk ik wel, B.

I: Ja ja.

S: Ja G (iq-team lid) heeft daar een beginnetje mee gemaakt. toen is B door gaan ontwikkelen. Beetje hetzelfde idee als TestX. Is ook rondom Excel gebouwd. Maar die roept dan uiteindelijk geen protractor aan maar een soort native windows UI engine die <uhm> ja die test dan zegmaar de applicatie. Ja dat <eh>... Daar kunnen we het nog wel een weekje over hebben denk ik.

J: <gelach>

S: Maar in principe is dat in beheer bij ons.

I: Maar is dat dan...

S: Trouwens, we gebruiken een ding van jullie. XLS2Test.

J: <ehh> Ja die staat voor winart wel aan geloof ik.

S: Ja.

J: Voor het <eh> Testx is die uiteindelijk weer uit gegaan. Maar voor winart is het allemaal aan blijven staan.

S: Het is een module die zet die Excel sheets om.

I: Ja, naar Testx <eh>

 15:29
s: objecten. Ja. Dus dat word nog wel gebruikt voor onze windows applicatie. Want die excel sheets kan ik ..... doen en dan krijg ik daar een object voor terug. anders moet dat native ook weer gecodeerd worden.

I: En jullie draaien dat zelf ergens. Ja precies. dat is volgen mij alweer oud.

s: ja het is oud.

J: het zal mij niet verbazen als wij nog de enige gebruiker daarvan zijn.

I: ja dat zou kunnen ja.

s: iemand heeft het een keertje uitgezet bij jullie. Ja ik weet niet of het jullie team is. Maar toen werkte het niet meer bij ons.

I: Oh, het draaide eerst centraal?

S: nee, het draaid denk ik in ons Docker <eh>

I: Oh ok, handig om te weten. Maar opzich, bevalt TestX wel. Het moet alleen wel aansluiten bij de applicatie?

J: Wat mij betreft voor nu voor zo'n moderne applicatie daar sluit de tool gewoon goed aan op de programmatuur en dan heb ik weinig klagen.

s: Ja, als je het aan mij vraagt ben ik niet zo'n fan van Excel. Om dit soort dingen in Excel te doen.

J: Het is misschien nog weer een volgende stap. ja en of Yaml daar de oplossing voor is dat denk ik eigenlijk niet.

s: Ik vind ook niet dat wij onze 400 testen moeten gaan herschrijven.

I: zou je daar misschien hulp bij nodig hebben. Niet dat wij dat met de hand gaan doen, maar meer in de zin van die testen automatisch migreren naar een ander formaat. de testen blijven hetzelfde, het is meer het formaat.

s: Ja klopt.

I: Bij Yaml zijn de keywords en alles blijft hetzelfde. Het is alleen een ander formaat.

J: Ja ik vraag me alleen af wat de winst is als we dat nu zouden doen. In de zin van we hebben met heel veel effort uiteindelijk voor onze oude webapplicatie behoorlijk stabiel gekregen. Er wordt niet heel veel meer aan doorontwikkeld.

S: Nee, dat is waar.

J: Het is nu meer een beetje van... Het heeft heel veel effort gekost en het heeft nu een soort van volwassenheidsniveau bereikt. Die testen draaien nu al zo lang dat heel veel meer testen erbij schrijven willen we ook niet. Dan ben je zo een dag ART's aan het stampen. Het is nu iets van vier uur als we voor alle applicaties de geautomatiseerde testen aftrappen. Dus we zitten ook wel redelijk aan de limieten dat je niet meer testen erbij wil. En, dus ja wat win je dan zegmaar door heel veel effort te steken in het omzetten naar Yaml.

I: Nee, en je kunt ook mixen en matchen. Je kun Excel en Yaml naast elkaar gebruiken.

J: Het grote voordeel wat ik begreep van N is dat je geen merge conflicten meer hebt.

I: Ja.

J: en omdat wij toch eigenlijk voor die testen niet meer dan drie man tegelijk aan dezelfde test aan het ontwikkelen zijn.

S: Naja, we coordineren dat heel goed. Toch? Als jij ART's aan het schrijven bent dan ga ik daar niet in rommelen.

J: Ja, ook dat, ja.

I: Ja, oke. Maar er is dus extra coordinatie binnen het team nodig.

J: Maar we hebben ook wel periodes gehad toen we echt nog veel testen bij maakte. Dat het niet raar was als er drie man tegelijkertijd aan het ARTen waren. Maar dat hebben we ook al best een lange tijd niet meer. Toch?

S: Nee, nee.

I: Ok.

J: En ik denk dat het voor WinART zal het sowieso niet kunnen om om te gaan naar Yaml.

S: Nou, maar dan moeten we dat allemaal zelf gaan onderhouden.

I: Ja, ik weet niet hoe dat precies opgezet is destijds door B.

I: <ehm>, je zei net dat de doorlooptijd vier uur is, als je alle testen voor alle applicaties draait.

J: Ja, ja.

I: Doen jullie dat regelmatig?

S: Ja, officieel. Eigenlijk willen we nog steeds een nightly run doen. <ehm>, maar onze kwaliteitsmanager heeft volgens mij de max staan op drie dagen. Dus als we dan drie dagen niet gedraaid hebben dan gaat het systeem piepen. Dus ja, ik weet niet of we dat doen elke drie dagen?

J: Nee, de praktijk is een paar keer per sprint.

S: Een keer per week minimaal.

J: Ja zoiets. Behalve dan op het moment dat er specifiek voor een applicatie user stories opgelost zijn dat ik voor die applicatie los dan de hele ART draai.

S: Maar niet alles.

J: Niet alles van het hele landschap. Nee.

I: Ok. <ehm>. Ja hoe  staat het met jullie met de  beschikbaarheid van de hele ontwikkelomgeving?

s: die is 95% up ofzo. Dat is gewoon goed.

I: Dat is ook iets dat gewoon hier wordt gehost door ITB?

s: Ja.

J: Ja is dat nog ITB officieel? Volgens mij is dat door het weggaan van L ook meer bij het team komen te liggen.

20:31

S: Ja, de infra. Dus de servers, dat ligt bij ITB. Alleen de software die daar op staat in principe, buiten een kale windows. Dat is wordt ook door ons onderhouden.

J: Het was L die dat stukje eerst deed.

S: Bij zijn vertrek is dat binnen het team komen te liggen.

I: En hoe ervaren jullie dat? Hoe gaat dat?

S: Mja, omdat het draait hebben we er meestal niet zoveel problemen mee. Maar. Mocht er iets bijkomen. Een Exchange server ofzo.

J:  <hehe>.

S: Dan, <eh>. Waar wij geen ervaring mee hebben. We willen gewoon iemand binnen de ontwikkelorganisatie hebben die dat voor ons doet. Dat is gewoon niet onze expertise. Die expertise is op dit moment ook niet binnen de ontwikkelorganisatie. Het loopt nog niet zo snel, loopt niet zo soepel.

J: Nee maar volgens mij was het punt ook een beetje dat er te weinig Windows omgevingen in beheer zijn om er echt dedicated iemand op te zetten. Voor L was gewoon te weinig werk om... En ja, dat snap ik wel. Je kunt ook niet voor vier uur in de week iemand neerzetten. Misschien nog wel minder. Dus het loont waarschijnlijk niet om daar iemand op te zetten.

I: Nee

J: Maar als er dan eens wat moet gebeuren dan is dat wel een uitdaging.

S: Natuurlijk kunnen we het wel oplossen binnen het team hoor. De kennis is er wel, maar..

J: Ten koste van de velocity.

S: Ja ten koste van de velocity van de ontwikkeling in de sprint.

I: En dat is ook handmatig werk ook? Het onderhouden van die omgevingen?

S: Ja.

J: Ja het zijn gewoon statische omgevingen heh.

I: Over hoeveel virtuele machines hebben we het dan?

S: <eeh> volgens mij hebben we er vier denk ik, per omgeving. Vier hebben we er nodig om het hele landschap te hosten.

I: Ja

S: En daar hebben we vijf varianten van. En die vijf setjes zegmaar. Vijf keer vier servers. <eehm>. Op die vijf setjes kunnen we twee instanties draaien. Gewoon op dezelfde server maar er naast. Die zijn wel allemaal statisch.

I: Oke

S: We hebben zegmaar een dev omgeving. Die telt vier servers. Daar ontwikkelen we tegen. Daar kunnen we twee verschillende versies op zetten. En dat hebben we dan vijf keer. Eentje voor de ART zegmaar.

J: Eentje voor test.

S: Eentje om productiebugs te testen.

I: Dus als je deployed zeg maar, met je deploy knop, dan moet je ook kiezen waar?

S: Ja. Maar eentje is nu dedicated in gebruik door performancetesten.

J: Ja.

S: En eentje voor de art-omgeving.

I: Moet je daar wel eens over afstemmen binnen het team? Van, ik ga nu dit deployen daar.

S: Is opzich wel handig. Want als je aan het testen bent en iemand drukt op die knop dan kun je weer overnieuw beginnen.

J: <haha>

I: Gebeurt dat ook?

J: Ja, af en toe.

S: Af en toe doen we dat expres.

J: <haha>

S: Om J even scherp te houden. <haha>

I: Maar het geeft geen grote problemen bij jullie?

J: Nee, ja weet je we zitten allemaal bij elkaar op de kamer. Dus meestal is het van 'joh ik ga even naar test deployen, is dat een probleem?' Nou en als er dan niemand geageerd dan druk ik op de knop.

I: <ehm> ok, ja dan heb je natuurlijk ook nog VM's voor je buildomgeving, voor TFS?

S: Die, ja. Die hebben wij ook. Maar dat ligt niet bij het team. Dat ligt wel bij ITB ook. Ik kan er niet bij ook. Die andere VM's daar ben ik gewoon administrator op. Maar die TFS server daar kunnen wij niet bij. Als ik daar iets op wil dan schiet ik tickets in. Die komen meestal bij E terecht denk ik. Een nieuwe gebruiker toevoegen ofzo.

I: Kun je daar nog veel aan configureren? Of is dat gewoon wat het is?

S: TFS?

I: Ja, of kun je daar met plugins werken of, ja?

S: Neuh, gebruiken we allemaal niet.

I: Het is gewoon een standaard installatie?

S: Wij gebruiken TFS heel weinig eigenlijk. Alle mogelijkheden.

I: Je gebruikt het alleen als code repository? Dus git?

S: Ja er hangt Git ander inderdaad als repository. En we gebruiken hem als buildserver ja.

I: En voor de rest alle custom automation dat zijn powershell scripts?

S: Ja, TFS kun je ook helemaal inrichten dat dat net als Jira al je tickets bevat en zo.

J: Ja en zou je TFS niet in principe ook als je continuous integration oplossing kunnen gebruiken? Dat het als een soort scheduler voor verschillende jobs kan werken?

S: Jaja, dat sowieso ja.

I: Jullie gebruiken het toch ook als continuous integration oplossing? Voor het bouwen zegmaar?

S: Ja elke check-in die gaat 'ie bouwen zegmaar. En SonarQube.

I: Dat gebruiken jullie ook?

S: Ja SonarQube wel.

J: Daar zouden we in theorie ook nog stapjes kunnen maken. Dat je zegt iedere keer als je incheckt dan doet 'ie ook SonarQube.

S: Ja dat doet 'ie ook.

J: Oh dat doet 'ie ook? Ik dacht dat jullie elke keer apart die build moesten starten.

S: Nee, alleen voor App1 v6. Dat is zo ingericht, ik weet niet waarom. Ik denk omdat die build heel lang duurt ofzo.

J: Maar voor andere applicaties als jullie een build doen gaat ook automatisch Sonarqube af?

S: Ja.

J: Dat is wel netjes.

I: Doen jullie ook iets met die informatie die sonar geeft? Of komt het voornamelijk terug in de kwaliteitsrapportage en zie je het op die manier?

S: Nou, <eh>, we doen er wel iets mee hoor. Maar voor die nieuwe applicatie proberen we hem goed te houden zegmaar. die oude applicaties dat is gedoe. Er zijn gewoon zoveel violations. We proberen het wel een beetje aan pakken. Het is  moeilijk onderhouden.

J: Het kwaliteitsdashboard staat min of meer zo afgesteld dat de baseline zoals we de applicatie binnen hebben gekregen dat is de geaccepteerde technische schuld. En als we aan die applicatie sleutelen dan mag het niet slechter worden.

S: Ja.

J: En als wij het kunnen uitleggen aan onze kwaliteitsmanager waarom het toch verslechterd is, of als er bijzondere omstandigheden zijn dan wordt er zo mee omgegaan van het is legacy, we weten het.

S: Maar die rules die in Sonar zitten, dat profiel, dat wordt ook regelmatig uitgebreid. En ja, dan komen er weer een paar duizend violations bij bij ons. En ja, dan moeten we de norm weer ijken en dan gaan we weer verder. Maar eigenlijk precies de kwaliteit meten, historisch en trends dat kun je eigenlijk niet meer zien.

I: Nee, snap ik. Maar kunnen jullie dan inzichtelijk krijgen wanneer je een wijziging doet of dat extra violations tot gevolg heeft.

S: Ja, dat wel. Maar ook beperkt hoor moet ik zeggen.

I: Ja, als het eenmaal zo'n grote hoop is, dan komt er een klein beetje er bovenop bij.

S: Ja, maar dat zie je wel. Dat kun je wel zien.

I: Het heeft voor jullie niet perse prioriteit?

S: Nee, eigenlijk niet.

J: Maar echt verslechteren doen we het ook niet.

S: Nee, dat niet. Maar als je kijkt naar die hele hoop, je zou dat eigenlijk gewoon terug willen brengen naar nul.

J: Ja we zouden eigenlijk gewoon stories op de backlog moeten hebben met betrekking tot technical dept. Maar dat doen we niet.

S: Ja, we hebben wel per story een taak. Kijk even naar de kwaliteit. De dingen die je geraakt hebt, kun je daar nog iets aan verbeteren? Maar het is allemaal minimaal wat mij betreft.

J: We hebben geen overkoepelend plan inderdaad om over een half jaar of een jaar op de nul te komen.

S: Ook een beetje met het idee in het achterhoofd dat we alle applicaties willen herschrijven. De huidige software is of gaat richting end of life eigenlijk. Dus de vraag is of je daar nog moet investeren. Wij hebben gekozen om het opnieuw te doen.

J: Waar we waarschijnlijk met dit tempo over een jaar of acht mee klaar zijn. Maar.

S: Sneller dan Sonarqube op nul krijgen denk ik. <haha>

J: Ja, zou het?

S: Ik denk het wel.

<haha>

I: Goed, oja. Leveren jullie de kwaliteitsrapportage ook op aan de klant? of kijkt die daar helemaal niet naar?

S: Ze kijken er niet naar.

I: Maar hij wordt wel opgeleverd?

S: Nee, hij wordt niet opgeleverd maar ze kunnen er gewoon bij.

I: Maar, waarom?

S: Nou ik heb het wel eens gevraagd volgens mij maar.

J: We zouden dat wel onderdeel van de review kunnen maken. Even twee minuten met elkaar naar de kwaliteitsrapportage kijken ofzo. Ik weet niet of dat iets toevoegd aan het proces maar.

S: Ik weet niet of het iets toevoegd.

30:26
