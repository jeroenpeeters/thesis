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

I: En de testrapportage wordt ook opgeleverd aan de klant?

J: Nou de testrapportage is eigenlijk ook niet meer dan de ART resultaten zoals die op het kwaliteitsdashboard staan. Ik schrijf niet los daarvan nog zegmaar een document of iets.

I: Nee, maar die worden ook opgeleverd en daar wordt naar gekeken?

J: Nee, daar geldt hetzelfde voor. die staan gewoon op het kwaliteitsdashboard. en dat is van buitenaf benaderdbaar voor hun. Dus als ze willen kunnen ze die openen.

S: Ja maar daar staat alleen maar een getalletje. Zoveel testen geslaagd, gefaald.

J: Ja, maar kunnen ze daar niet in doorklikken naar BIRT?

S: Nou, dat werkt niet extern denk ik.

J: Oooh, dat zou kunnen. Nou dan is het antwoord nee.

I: Oke. En <uhm>, wat vind je eigenlijk van de manier hoe de testcases en dat soort zaken worden vastgelegd in Jira?

J: Ja, ik vind een paar dingen. Af en toe doen wij redelijk kleine stories die eigenljik cosmetisch van aard zijn en dan vind ik het gewoon veel overhead om daar logical testcases voor te schrijven want of ik dan de testcase lees of de acceptatiecriteria in de story lees dat is bijna een op een hetzelfde omdat het zulke simpele stories zijn. Dus dan hebben wij inmiddels ook de vrijheid dat we mogen zeggen bij zo'n story om te zeggen van we verwachten nu nul logical testcases. Want anders zijn we echt aan werkverschaffing aan het doen.

S: Voorbeeld. Een label aanpassen ofzo.

J: Ja. Of verplaats een invoerveld. Naja, noem eens wat dom <eh>.

J: Ennn.. Voor de overige stories vind ik het opzich goed om logical testcases te schrijven. Heb ik alleen nog wel eens wat moeite met het format zegmaar. Ik ben gewend dat ik of een beslistabelletje of zo'n matrixje of een graaf maak waarin je je logische paden tegen elkaar afzet. En zoiets kan ik niet kwijt in Jira. Dus nu heb ik dat ik alsnog voor mijzelf even uitteken wat de testgevallen moeten zijn. Dan denk ik van nou, nu heb ik voldoende informatie op m'n kladblok om die testen uit te kunnen voeren. Maar, oja, dan moet ik ze voor de administratie ook nog in Jira zetten. En op het moment dat die logical testcases daadwerkelijk geautomatiseeerd moeten worden. Dan denk ik van nou, dat is goed want dan hangt het samen met je kwaliteitsrapportage. Prima. Maar anders zou ik zeggen, wat voegt het toe.Je kunt die dingen ook op will not be executed zetten.

I: Ja

J: Wat betekend dat ze maar een keer uitgevoerd worden. Nou onze PO's kijken nooit naar die dingen. Ja jullie als ontwikkelaars doen vaak nog een review op de LTC's.

S: Vaak, altijd.

J: Altijd. Ja en daar wil het nog wel eens handig voor zijn dat een ontwikkelaar naar die testgevallen kijkt en dan ofwel tegen mij zegt van joh, je mist dit of dat. Ofwel dat je als ontwikkelaar ook kunt denken van, wacht, ik heb deze testsituatie over het hoofd gezien. Dat heb ik nog niet gebouwd. Dus, maar. Dat is wel handig. Maar ik vind dat het ook nog best vaak verzand in meer wat punten en comma's rechtzetten zegmaar in een administratief dingetje dan dat het echt de testen verbetered. Of dat het de kwaliteit van het ontwikkelproces verbeterd.

S: Ja, eens.

J: Toch.

S: Ja. Ik moet zeggen dat ik het opzich best wel veel werk vind om zo'n LTC in Jira op te voeren. Je moet hem handmatig koppelen aan de story. Je moet, ja..

J: Je moet er met het reviewen van de story ook nog aan denken om de status om te zetten naar reviewed.En hij moet op resolved staan, en.

S: Je merkt echt.. Je kunt niet al die dingen achter elkaar uittypen. Je moet dan weer een nieuw issue maken, dingen koppelen. Het overzicht raak je ook best wel snel kwijt volgens mij.

J: Ja klopt.

S: Ik ben er wel aan gewend. Ik heb meestal twee schermpjes open staan. Links de story met de LTC's en rechts ga ik dan nieuwe dingen maken.

J: Ja, doe ik ook, ja.

S: Maar toch is het eh....

J: Maar dat vind ik met reviewen ook. Je moet een LTC openen om te kunnen reviewen. Maar je mist dan de samenhang met andere LTC's terwijl in principe zou je dan willen zien van oke als de ene LTC dit afdekt, hoe hangt dat dan samen met wat de rest afdekt weetje wel. Dat overzicht mis je ook

34:42

S: Ja.

J: Wat is de reden dat je dat vraagt eigenlijk.

I: Nou omdat dat samenhangt met  <ehh>, bij de meeste projecten in elk geval, hoe de hele workflow is ingericht in zo'n continuous delivery straat. Want het begint natuurlijk met de wijziging die je wilt doen, je user story. En van daaruit begin je vaak te werken. En inderdaad, daar hangen die LTC's mee samen, de implementatie van de test case, de kwaliteitsrapportage. Het hangt allemaal met elkaar samen en <uhm>, ja als het ene heel veel extra werk of onnodige handelingen dan kan dat zie je bij sommige teams dat dat doorsijpelt in de rest van het werk.

S: Ja, wij gaan daar best wel pragmatisch mee om. Soms heb je eigenlijk vijf LTC's nodig om verschillende scenario's te doen, maar die proppen wij vaak in 1 dan.

J: Ja zeker als we toch al van.. Bij ons is er een mechanisme dat de PO per user story aangeeft of die hem belangrijk genoeg vindt om hem op te nemen in de ART.

S: Ja of handmatig, we hebben ook nog een deel handmatig testen.

J: Als die PO al zegt van joh, hij moet goed getest worden want hij moet goed opgeleverd worden, maar ach hij hoeft niet de regressietest in. Dan kun je iets makkelijker met je LTC's omgaan.

S: Ja dat doen wij.

J: Ja ik vind dat opzich ook wel terecht hoor.

S: Ja, nee ik ook. Want anders zou ik het niet doen.

I: Je zei dat jullie ook handmatig testen. Wat is de reden daarvan? Is dat heel moeilijk te automatiseren?

S: Ja. <ehh> We hebben een aantal testen... We hebben een outlook plugin ontwikkeld. Ja, dat is gewoon moeilijk testen. We hebben het wel ooit op de backlog gezet om dat te maken. We hebben een proefje gedaan met de tooling die we ook gebruiken om de windows applicaties te testen. In theorie moet dat werken. Maar de klant vond dat teveel werk. En die plugin gaat er op termijn ook weer uit, dus. Dat gaan we ook niet meer doen denk ik. Zolang die in gebruik is gaan we dat elke keer handmatig testen, dat deel.

I: Maar valt dat dan mee, het werk dat je daarmee hebt? Is dat ooit een probleem of niet?

S: Ja, het is misschien een uurtje werk ofzo.

J: Als ik hem helemaal doe ben ik een uurtje of twee bezig.

I: Oke.

S: En dan hebben we nog twee testjes denk ik, voor een service. Windows service die periodiek zegmaar draait. Ja vanuit de ART moeten we dat ding kunnen stoppen en starten zegmaar. Ja daar hebben we maatwerk voor nodig denk ik, want dat kan nu niet. Je moet eigenlijk op die Windows machine inloggen remote en dan de service stoppen en starten zegmaar.

38:12

S: Dat pastte toen niet in het automatiseringsproces dus dat doen we ook met de hand. En we hebben een hele set aan...

I: Dat kan niet gewoon via powershell? Via dat scriptje?

S: Jaja, dat kan wel.

I: Maar je kunt niet op Windows remote inloggen en iets van powershell uitvoeren?

S: Ja, dat kan je ook remote uitvoeren. Maar dat moet wel gemaakt worden. Laat ik het zo zeggen.

J: Dan moet je de aansturing vanuit je tooling ook wel weer regelen. En dat zou dan weer custom werk zijn waarvan de klant zei, nou, laat maar zitten.

S: Ja.

J: En gezien hoe relatief weinig tijd, want het is maar een keer in de drie weken een uurtje voor een tester of ontwikkelaar om zo'n testje uit te voeren versus de ervaring die we toen hadden dat het best wel veel tijd kostte om dat in de tooling op te nemen, ja is toen besloten van het is het niet waard.

I: Maar die handmatige testen is nooit een struikelblok? Aan het einde van de sprint, onder tijdsdruk?

S: Ja,, ja.. we doen het liever niet maar. Het moet. We hebben geen andere oplossing er voor op korte termijn. We hebben nog een setje die is semi-automatisch. Een setje restful services die we testen.
<eh> Ja ook een beetje een lang verhaal denk ik maar dat doen we met soap-ui. een test suite hebben we daarin gemaakt. Moet je af en toe wat handmatige dingetjes in doen.

J: Ja het punt is, daar zouden we Win-ART voor moeten gebruiken..

S: nou, of TestX.

J: We willen natuurlijk.... We moeten eerst de uitgangssituatie goedzetten en controles doen.

S: Ja dat kan ook in SQL heh.

J: Misschien nog niet eens zo'n slecht idee trouwens.

S: Nee, nee. Maar dan moet je..

J: Ook dan moet je er weer effort in steken.

S: Het idee was ooit van uh, services worden niet geautomatiseerd heeft iemand ooit gezegd. Automatisch getest. Ja de frontend die de service consumeert die moet je testen, maar de frontend is een mobiele applicatie die niet in beheer meer ligt bij de ontwikkelorganisatie. Dus ja die gaan wij nooit automatiseren.

J: Het idee was we wachten met het automatiseren totdat die frontend ook bij ons in beheer komt, want dan gaan we die automatiseren.

I: Maar dat is dus nog een andere applicatie die bij een andere partij in beheer is?

S: Ja.

I: En daar werken jullie dan wel nouw mee samen?

S: Jawel.

J: Wij bouwen de backend en zij bouwen de frontend. En uiteindelijk moet dat op elkaar klikken.

S: Meestal gaat het wel goed.

J: Totdat ze in productie gaan. en dan uh.

S: Ja dan gaat het weer stuk, ik weet niet maar. Ja. 't is best wel complexe infra denk ik. Zit weer het Good platform tussen. Blackberry, is een of andere beveiliging. Lijkt een beetje op het Blackberry netwerk zeg maar. De applicaties draaien dan weer in een geisoleerde container. Met een VPN verbinding met het bedrijfsnetwerk. Maar die schil die er omheen zit veroorzaakt ook veel problemen.

41:36

I: Hebben jullie daar last van? Of zij juist?

S: In principe hebben wij daar niet direct last van nee. Maar vaak dan in de ontwikkeling zie die Good schil er niet omheen en werkt alles. Dus ook met onze backend. Dan gaat het in productie met die Good schil er omhheen en de configuratie daar en dan werkt het niet meer.

I: Ja, oke. Hebben jullie die mobile app ook hier om dingen mee te proberen?

s: Nee eigenlijk niet.

I: Hoe gaan jullie dan om met wijzigingen aan die backend service? Dat communiceren jullie op een of andere manier naar dat team?

S: Ja, in principe ligt het een beetje bij ons. Er komt een wens van de klant, ik wil dit met die app doen. Wij kijken wat voor data daarvoor nodig is. Dan bedenken wij de interface en sturen we dan naar die andere partij. Die mogen daar wat van vinden. Meestal vinden ze er niks van.

J: Het zijn opzich eenvoudige services. Het is niet alsof er zulke berichten over de lijn gaan.

I: De communicatie met de klant loopt wel via jullie? dus jullie bouwen dan die backend service en dan communiceren jullie met het team dat de app bouwt..

S: In principe niet, dat staat helemaal los dat doet de klant zelf. Ik heb technisch wel contact met ze maar functioneel en hoe die app eruit ziet daar doen wij niet zoveel mee. In principe niets.

J: Het usability aspect wat natuurlijk aan zo'n app zit enzo dat is tussen die partij en de klant.

43:04


I: Hebben zij dan hun eigen setup van die tooling? Of van de applicaties om die app te kunnen testen.

S: In principe testen zij niet met onze omgeving. zij hebben zelf een soort dummy service ingericht denk ik op basis van de interface beschrijving.

I: Maar komt het dan echt pas voor het eerst samen in productie?

S: Nee, nou, niet helemaal volgens mij. Wij lopen meestal een stuk voor met ontwikkeling van de backend. Dus die staat dan al in de testomgeving bij de klant.

I: Ja.

S: en op die omgeving kunnen ze dat wel testen.

I: Oh ok. En daar wordt ook al gewerkt met dat beveilingsplatform, of dat dan weer niet?

S: Nee, dat niet. Dat komt pas in productie naarboven en daar klapt het nog wel eens.

J: Dat zou een goed idee zijn als ze dat al in de testomgeving doen.

S: Ja dat weet ik maar dat was 'gedoe'.

I: In dit geval is dit dus niet voor jullie een probleem en ook niet voor hun, maar meer voor de klant alleen?

S: Uiteindelijk is het voor ons allemaal een probleem.

J: Je krijgt vanuit productie dan vragen van kunnen jullie eens meekijken met wat er nu is gebeurd.

S: Ja.

J: En dan mis je inderdaad een geintegreerde omgeving. Die bouwer zegt dan van joh kunnen jullie je soap-ui projectje even sturen want dan weten wij precies hoe zo'n request eruit moet zien.
En dan zeggen wij, stuur het berichtje wat er bij jullie uitkomt maar eerst naar ons misschien kunnen wij dat tegen onze software afvuren. En dat, ja, dan is het jammer dat je niet ergens een geintegreerde omgeving hebt waar we met z'n allen in kunnen kijken.

S: Ja productie.

<gelach>

I: Of een soort pre-productie. Je weet ook niet wat de reden is dat ze dat niet gewoon in pre-productie of acceptatieomgeving hebben ingericht met dat beveiligsingsplatform erbij. Zijn dat licentiekosten waarschijnlijk?

S: <eehm> Ja, ze hebben daar een omgeving voor, maar die is niet ingericht. Wat de reden daar precies van is weet ik niet. Tijd, kosten, kennis. Iets.

I: Oke, duidelijk. <ehm> Andere teams die hebben de mogelijkheid.. <ehm> Jullie weten denk ik wel wat wij doen toch met het Docker platform? Of niet?

S: Mja, ik weet wat Docker is.

I: De andere teams hebben nu.. Kijk vroeger was het zo dat de contunous integration omgevingen werden beheerd door het interne beheer team. Dan had je 1 Jenkins, of iedereen had eigenlijk 1 Jenkins, 1 build server en daar werkte iedereen op. Of sommige teams hadden een eigen instantie. Maar daar kon je zelf niets op installeren, geen plugins of configuratie aanpassen naar de wensen van het team. Dat kan nu wel. Daarbij kunnen ze via het Docker Dashboard, die hebben jullie waarschijnlijk ook toch?

s: Ja, hebben wij ook.

I: Eigenlijk elke dienst starten die je nodig vindt ter ondersteuning van je ontwikkelstraat. Wat je als team maar wil. <ehm> Hebben jullie behoefte aan zo'n dienst? En dan met name in de Microsoft wereld. Docker komt natuurlijk ook naar Windows dus.

S: Wij hebben daar nog niet echt behoefte aan denk ik. Misschien zou het het werk iets kunnen vergemakkelijken hoor. Maar het is nu allemaal ingericht.

I: De standaard tooling die er is, werkt voldoende voor jullie project en team?

S: Ja het werkt goed. Met alle scriptjes die wij eromheen gebouwd hebben zegmaar, naar onze eigen behoefte. Werkt dat opzich wel.

I: Maar bijvoobeeld ad-hoc omgevingen kunnen...

J: Ja, maar omdat het zo specifiek is, microsoft omgeving, denk ik dat de kans groot is dat je een beetje verzand in dezelfde situatie die we met de test tooling gehad hebben. Dat je dan een soort van standaardoplossing vanuit het IQ-team ondersteund kan worden. Maar dat dan in de praktijk gaat blijken dat die toch gezien onze omgeving niet helemaal voldoet en dat je dan best wel weer heel veel effort moet gaan steken in zoiets werkend te krijgen. en, ja dat is voor ons gezien alle investeringen die de klant heeft gedaan in zegmaar wat we nu draaiend hebben denk ik niet dat ze daar echt open voor zouden staan.

s: Wat is Docker voor Windows exact.

I: Dat is een hele goeie, daar moet ik ook nog beter in gaan duiken. Wat het nu is is dat Docker voor Windows ondersteund nu alleen Linux applicaties. Want Docker draait dan in de hypervisor. Je hebt dan eigenlijk Linux naast windows.

48:04

S: Je draait Docker op hyperv?

I: Ja.

S: Maar kun je daar binnen ook Windows?

I: Nog niet dus. Neen nog niet. Dat komt wel.

S: Maar ik kan dan in theorie een SQL instantie draaien?

I: Ja. Dus dat is wel iets waar bij aankomend jaar ook echt naar willen gaan kijken. Het is nu nog niet productiewaardig. Maar dat zal wel komen.

S: Ik denk niet dat wij dat snel binnen onze projecten ook zullen gaan gebruiken hoor. Waarschijnlijk worden alleen de nieuwste versies ondersteund.

I: Ja, ik heb geen idee.

S: Nou waarschijnlijk. Dat zie ik ook bij dot net core nu. Dot net vijf bestaat niet meer, dat heet nu dot net core.

I: Ja.

S: Werkt allemaal iets anders, lightweight, blabla. Dat draait, dat werkt in Docker volgens mij. Het is multiplatform gemaakt. Draait op Linux, dus ook in Docker volgens mij.

I: Dus dat is dan open source of niet.

S: Dot net core is ook open source ja. <ehm> Maar die technieken gebruiken wij niet. Wij zijn gebonden aan de oude  technieken. En ik denk die oude technieken waaraan wij gebonden zitten gaan nooit draaien in Docker. Ik denk niet dat ze oude spullen compatible gaan maken.

J: Maar dat ligt dus niet zozeer aan Docker, maar die dot net vier gaan ze nooit.

S: Dot net vier gaat denk ik nooit, nee. Waarom, nee, dat is veel te veel werk.

I: Ik heb geen idee. Dot net core kun je op Linux draaien. Dat kan dan nu met Docker omdat Windows Docker Linux ondersteund via HyperV. Maar echte Windows applicaties kun je nog niet met Docker draaien. Maar dat, komt er als het goed is aan. Dan zou je in theorie elke Windows applicatie in een container moeten kunnen draaien. Dat zou dan ook voor oudere applicaties gelden.

S: Maar het is allemaal...

I: Geen idee wanneer dat zo ver is. Maar bijvoorbeeld iets als omgevingen on-demand. Want jullie hebben nu een x aantal statische omgevingen.

S: Ja.

I: Zouden jullie daar iets aan hebben? In de zin van, bijvoorbeeld, parallel testen draaien om te doorlooptijd te verkorten.

S: Ja opzich wel. Dat was ook ooit het doel, om dynamische omgevingen in te richten. <emh>, ja L was daar mee bezig.

J: Ja? Omdat ook echt voor elkaar te krijgen?

S: Dat was de oorspronkelijke wens. Ik weet niet precies waarom, maar het lukte niet of... Toen hebben we die statische omgevingen gehad. En ja opzich werkt dat voor ons. We hebben tien van die dingen, we werken met vier man. We hebben in theorie twee omgevingen per persoon tot onze beschikking. Het kost denk ik wat om die servers in de lucht te houden, maar dat zien wij niet. Opzich is het mooier om het dynamisch te kunnen doen maar dat gaat niet zo makkelijk voor ons.

I: Het is nu niet direct een bottleneck voor jullie?

S: Nee,  het was een bottleneck omdat we maar vijf omgevingen hadden. En meer virtuele omgevingen kon niet, qua kosten denk ik. Toen hebben we die dubbele instantie erbij gedaan. Dat we twee instanties per vm kunnen draaien. En nu zijn we verre weg van... er is altijd wel iets vrij.

51:29

I: Hoe kijken jullie aan tegen de ondersteuning vanuit de organisatie voor jullie project? Misschien in technische zin, of procesmatige zin? Missen jullie daar iets? Wordt er teveel gestuurd? Deze vraag zit er met name in omdat bij andere teams Docker min of meer naar binnen is geschoven. Zo van, we gaan nu Docker doen, terwijl daar vanuit de organisatie misschien wel te weinig ondersteuning voor was.

J: Dat hebben wij ervaren met de test tooling zeg maar. Dat is eigenlijk gepushed van je moet dit gebruiken. Ja, maar het werkt niet. Nouja.

I: Dat is gepushed door de technical lead van het project?

J: Ja.

S: Docker wilden ze eigenlijk ook pushen.

I: Maar hoe dan?

S: Ja, dat kan niet, dus. Er waren toen ook al verhalen over Docker voor Windows. Maar vooralsnog is het er nog niet. Maar over ondersteuning vanuit de ontwikkelorganisatie.

I: Ja, met name voor dit soort zaken dan.

S: Ja ik vind niet dat er echt ondersteuning is voor ons.

I: Maar mis je dat? Je zei net dat we alles wel in het team kunnen oplossen. Dat is natuurlijk ook heel goed.

S: Ja, zo is dat een beetje gegroeid. <ehm> We moeten het wel zelf oplossen. We hebben ons eigen ding bedacht en dat draait nu. Maar ja. Voorbeeld, we willen die Exchange server hebben.

I: Ja.

S: Ja, dat moeten we zelf oplossen. Het wordt niet ondersteund door de ontwikkelorganisatie.

I: Maar vind je het nu meer een nadeel dan een voordeel?

S: Ja, dat vind ik een nadeel ja.

I: Ja, maar in andere gevallen zou je ook kunnen denken van het is een voordeel. Je hebt zelf meer controle over je omgevingen.

J: Ja, ik vind opzich het voordeel dat je een stukje flexibiliteit hebt. Vanuit het team weten we met elkaar best wat de juiste tooling of de juiste way to go is. Dat er ruimte voor is  dat je daar je eigen keuzes in kunt maken vind ik wel goed. Ik geloof namelijk niet in de omgekeerde gedachte die eerst bij de ontwikkelorganisatie heerste. Dat was van we hebben een blauwdruk en ieder project moet maar in die blauwdruk passen. Ja dat gaat niet. Als je een dot net project hebt of een Java project dat kun je niet allemaal in dezelfde blauwdruk stoppen. Dus dat die flexibiliteit er inmiddels is dat vind ik wel goed. Alleen dat staat los van een stukje technische of infrastructurele ondersteuning die misschien wel wat meer geboden kan worden.

S: Ja nou het gaat ook niet goed nu merk je.

I: Wat bedoel je dan?

S: Ja, Exchange is iets dat wij buiten het team willen houden. We hebben aan de ontwikkelorganisatie gevraagd van los het op, wij kunnen dit niet, wij willen dit niet. <ehm> Het is uiteindelijk toch binnen het team gekomen. We zijn nu drie weken verder maar we zijn eigenlijk nog geen stap verder.

J: En uiteindelijk gaan we het toch weer zelf doen.

S: Ja we zijn het al zelf aan het doen. Maar er wordt ook veel heen en weer gebounced. Server verkeerd ingericht. Dat kunnen wij niet zelf. Dus er moet weer een nieuwe VM kloon komen.

J: Ik denk dat dat vaak ook het nadeel is van deze vorm van ondersteuning zegmaar. Dat je eigenlijk net te ver van de projecten af zit om alle ins- en outs te weten. In hoeverre kun je dan echt adequate ondersteuning bieden. Ze kunnen prima dat servertje neerzetten, maar wat was er nou waarom het voor ons alsnog niet ging werken? Ja dan denk je, kunnen zij (technisch beheer) dat weten. Ja misschien als ze iets proactiever zijn en even wat meer vragen aan ons.

S: Maar dat die eerste run verkeerd was?

J: Ja.

S: <eh> Ja. Ook ontbrekende kennis denk ik.

J: Ik vind dat ook wel lastig hoor. Wat dat betreft hou ik m'n hart vast als straks ook die performance en security testen, wat ook nu meer een dienst moet gaan worden, in plaats van een of twee handige harries die hier over de werkvloer lopen. En dat model werkt opzich. R heeft voor ons performancetesten gedaan. Ja zodra hij er even niet uitkomt dan loopt hij gewoon naar ons, of wij naar hem.

I: Ja.

J: En uiteindelijk los je het dan op doordat je gewoon bij elkaar zit. En nu gaat dat ook weer losgetrokken worden van dat wordt een dienst en op afstand en.

S: Eigenlijk wel een beetje hetzelfde idee als met IQteam en IT beheer. We gaan bijna nooit met elkaar samen zitten om iets op te lossen. We moeten een ticket aanmaken.

J: En dan gaat iemand naar dat ticket kijken die waarschijnlijk onze omgeving nog nooit gezien heeft, weet je wel. Hoe kun je dan goede ondersteuning bieden. En dan zeggen wij ja die gasten die weten het ook allemaal niet.

S: En zij roepen dat over ons.. Er zit een muur tussen eigenlijk.

I: Ja daarom ben ik ook dit aan het doen. Er zitten twee kanten aan, het is voor m'n scriptie maar het helpt wel. We hebben als best veel nieuwe inzichten gekregen.

S: Als wij ondersteuning willen hebben van IT beheer moeten wij exact zeggen wat we willen hebben. Wij willen een VM server dit hebben, met software X er op. We moeten hem zo geconfigureerd hebben.

J: Je moet het eigenlijk weten tot op het niveau waarop je het eigenlijk net zo goed zelf kan doen.

S: Als wij dus een foutje maken in onze aanvraag dan moeten we dus weer helemaal opnieuw beginnen.

J: Terwijl we willen gewoon zeggen van dit is ons probleem...

S: Lost het op.. <haha>

I: Maar zou je dan toch niet liever zelf de mogelijkheid willen hebben om ergens met een paar kliks een vm aan te maken.

J: Ja ik geloof meer, misschien spreek ik voor m'n beurt, maar ik persoonlijk geloof meer in een soort van inleen model. Op het moment dat wij die expertise nodig hebben, voor deze drie stories, trekken wij iemand van zo'n expert team intern bij ons in het team.

S: Ik denk dat het veel efficienter is als wij iemand tijdelijk kunnen inhuren, of wat dan ook.

J: Voor het IQ-team ook hoor. Stel dat we ooit op het punt komen dat we met Docker willen gaan werken. Ik zou zeggen zet maar gewoon dedicated een IQ-man in ons team neer tot het moment dat het werkt zeg maar.  Maar op afstand van hier heb je een server en dan tegen het team zeggen van nou ons taakje is gedaan, ga er maar wee werken.
En dan zeggen wij na drie klikken ja maar dit werkt voor ons niet. Ja dan mikken wij dat weer terug over de schutting, weet je wel.

I: Nee, nee. Dat is natuurlijk ook niet de agile gedachte. Maar zo hebben wij dat in het begin ook wel gedaan met de projecten die Docker gingen doen. Dat wij daar een aantal uur per week met hen samen gingen zitten om te kijken hoe we dat konden toepassen binnen hun project.

J: Ik weet niet wat jullie ervaringen daar mee zijn, maar het lijkt mij wel een model wat zou moeten kunnen werken. En als het eenmaal werkt dan kun je op afstand ondersteuning bieden.

I: Nou kijk de gedachten is natuurlijk dat, vroeger kon je als team zelf helemaal niets doen en moest je alles via technisch beheer regelen. En dan had je precies de problemen die je beschrijft.
We zijn aan het kijken van je moet naar een juiste mix. Want je zei ook van ja, als team weet je goed welke services je nodig hebt in je ontwikkelstraat en hoe je bepaalde dingen wilt inrichten. Wat voor jou en voor dat project lekker werkt. Dus die vrijheid moet er ook zeker zijn, denk ik. We zijn aan het zoeken naar een juiste balans.

S: Ja, maar wij zijn wel iets anders begonnen met L. erbij. In principe was L voor ons diegene die voor ons de externe problemen oplostte. Ja die zal ook wel met technisch beheer gecommuniceerd hebben maar. Daar hadden we eigenlijk geen problemen mee. Voor ons was dat wel dienstverlening.

J: Ja, hij zat wel in dat team (technisch beheer) maar hij was een soort van dedicated...

S: Nu hij er niet meer is, gaat het, ja, anders.

J: Maar hij kon ons helpen doordat hij ook kennis had van onze omgeving.

S: Ja, hij wist ook van het project inderdaad.

J: En dan werkt dat inderdaad. Hij heeft kennis van de omgevingen en van het project. Dan heb je aan twee woorden genoeg om ons te helpen.

S: Als hij er nu nog was en we zouden zeggen van we hebben een Exchange server nodig, fix het maar. Hij zou waarschijnlijk ook nog met de klant gaan bellen om na te vragen waarom het nodig is en op welke manier.

I: Oke, duidelijk. Maar stel je zou iets in de cloud kunnen starten, dat zou niet een oplossing zijn? Dat je zou kunnen zeggen van we maken een image van Exchange.

S: Ja, dat zou perfect zijn. Als wij klik Exchange kunnen doen en wij kunnen daarmee koppelen. Zou ideaal zijn. Ook wel SQL server. Ja dat hebben we nou allemaal draaien, maar voor nieuwe dingen.

I: Misschien voor nieuwe dot net projecten die ooit gaan starten.

S: Als we in theorie ooit nog met sharepoint moeten gaan babbelen ofzo.. Ik weet dat de klant ook sharepoint heeft. Ja, klik sharepointomgeving. zou ideaal zijn.

J: Maar ja, dan zouden er dus dat soort Dockerized omgevingen moeten zijn. Out of the box die..

I: Ja, Docker maakt het misschien makkelijker. Maar je kunt ook eerst met, weet ik veel, automatisering op VM niveau werken.

S: Ja dat is ons om het even.

I: Maar dit is toch een goede aanleiding voor ons om naar Docker voor windows te gaan kijken. Dit is natuurlijk te laat voor jullie nu.

S: Nou dat weet ik niet. In principe kan dit project nog jaren en jaren draaien.

J: Ja maar dan moeten we niet zo'n traject krijgen als met de ART tooling gehad hebben. Zo van, hier heb je een halve oplossing.

S: Nee.

1:04:20

J: Uiteindelijk heeft dat niet heel veel goodwill bij onze klant oplgeverd ook. Want het wordt dan verkocht aan de klant van we hebben een werkende en kant en klare oplossing voor testautomatisering.

I: Ja.

J: Maar per saldo zien zij dat ze het hele jaar 25-30%, misschien wel meer, van hun sprint van hun velocity kwijt zijn aan het in de lucht brengen en houden van die tooling. Ja dat geeft toch een beetje scheve gezichten.

I: Ja.

J: Dus ik denk wel dat dat belangrijk is als we ooit besluiten om over te gaan op iets als Docker dat we hele goede afspraken met elkaar maken.

I: Oke, dan waren dit mijn vragen.
