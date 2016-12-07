## Team 1 {.unnumbered}

Property        Value
------------    ---------
Date            22-11-2016 10:00
Duration        20 minutes
Present         ***I:*** interviewer
                ***R***: developer 1
Team members    Two developers
Team size       Small
Project size    Large         

### Transcript {.unnumbered}

This paragraph contains the annotated transcript of the interview. One developer took part. Since the interview was in Dutch the transcript is also in Dutch. Annotations are in English.


***I:*** waar wij als IQ-team geintereseerd in zijn is hoe de oplossing in de ontwikkelstraat
wordt ervaren. Eventueel de problemen die daar mee zijn maar ook of jullie daar voldoende
ondersteuning bij hebben. Of je door de organisatie gesteund voelt. Eigenlijk alles wat
daarmee te maken heeft. en wat je er van vindt. Eventuele problemen. Jullie gedachtes.

***R:*** Het meeste wat wij graag willen is dat het (ontwikkelomgevingen) gewoon beschikbaar zijn. En dat is het hier wel. En het is makkelijk. Alles kun je gewoon via Docker starten, dus dat maakt het wel heel erg simpel. Zo van, we hebben Git nodig. Toen we begin dit jaar met Bulk begonnen was het van hop, en daar stond Git. Dan moet je het nog wel een beetje inrichten, je moet nog certificaten maken en dat soort dingen. Dat was nog soms wel een beetje vogelen van hoe krijgen we dat nou vanuit jenkins dat certificaat er in en werkend, dat wilde in het begin nog niet want toen zat er nog een ander certificaat dwars. Dus daar zit soms wel wat uitzoekwerk. Toen ben ik bij jou zelfs langsgekomen en dan wordt er gewoon even naar gekeken, even inloggen op die server, dan kom je er meestal wel weer uit. Dus ja, eigenlijk ben ik wel tevreden daarmee. Er zijn altijd wel dingetjes natuurlijk.

    - Continuous Delivery environment should have high availability
    - Help is needed to finalize CD services configuration

***I:*** Wat is nu jullie manier om een nieuwe release te testen, wat doen jullie? Wat is jullie manier?

***R:*** In het begin hebben we in Jenkins een job gemaakt die dan een Docker image maakte die we vervolgens weer konden gaan starten. En dat konden we via Jenkins weer starten. Dat bleek te onhandig omdat je vaak lokaal eerst wilt testen om te kijken of het goed is voordat je daadwerkelijk een build doet. Uiteindelijk zijn we terug gegaan naar scripts om Docker images te bouwen en om te kijken of het allemaal goed is en dan pushen we uiteindelijk.

***I:*** Dus je runt eerst lokaal je applicatie?

***R:*** Ja, omdat dat toch makkelijker is. Je kunt makkelijker testen en nog eventjes een nieuwe deployment erin doen. Dat gaat lokaal makkelijker. Daarna pushen we en dan starten we hem nog een keertje opnieuw op de Docker host zodat anderen er ook naar kunnen kijken. Bijvoorbeeld om te reviewen en de hele reutemeteut.

    - Local builds are easier and quicker than building on CI environment

***I:*** Je pusht hem gewoon vanaf je lokale machine dan? Dus je bouwt hem niet via Jenkins?

***R:*** Nee, dat hebben we dus wel gedaan. We hebben nu ook zoiets van; dat moeten we nu ook wel weer gaan doen. R heeft wel meer moeite om het lokaal te draaien omdat z'n laptop dat gewoon niet zo goed trekt. Misschien moeten we toch wel weer gaan kijken om van die jobjes te maken. Maarja, de drempel om die jobjes te maken is dan wel weer hoog. Het zijn er namelijk best veel.

    - Local builds require a performant developer machine
    - Many CI jobs needed to build the software

***I:*** Dat is best goed om te weten dat je daar tegenaan loopt.

***R:*** Het is natuurlijk ook gewoon veel. Voor elke aansluitvoorziening hebben we ook een container. We zijn er eigenlijk een beetje laat mee om dat te gaan doen. Als je dat nu zou willen doen moeten we eigenlijk 40 van die dingen gaan maken. En jobjes. Dus tja.

***I:*** Dit is wel specifiek voor jullie project. Je hebt echt ontzettend veel deelapplicaties.

***R:*** Ja het zijn er veel, waardoor het ook niet meer leuk is om dat achteraf te doen. Opzich zou het wel handig zijn om dat wel te doen. Omdat als er iemand nieuw bijkomt die denkt van 'Hoe krijg ik hier nou een container gebouwd?' Dat is best wel even zoeken. Als je gewoon een jobje hebt waarbij staat 'bouw deze', dan is het van 'klik'. Dus in die zin is het wel nuttig om het wel te doen.

    - Building on CI server would enable new team members to start quicker

***I:*** Je hebt nu wel scripts maar je moet wel weten waar ze staan?

***R:*** Ja, en je moet weten welke je moet runnen.

***I:*** En je moet dus een pc hebben die krachtig genoeg is om het lokaal te bouwen.

***R:*** Ja inderdaad.

***I:*** Maar verder weinig problemen eigenlijk?

***R:*** Ja, eigenlijk niet zo heel veel problemen. Met Docker wel af en toe dat een host vol was en dat 'ie dan onderuit gaat. Maar dat gebeurd niet zo vaak meer. We hebben de load iets beter verdeelt over de hosts die we hebben. Dat gaat nu redelijk. We hebben nu drie hosts. Dus dan past het meestal wel. Misschien als het nog verder gaat met dit project dan hebben we misschien nog meer hosts nodig.

    - Docker host crashes occasionally
    - Manual load distribution between Docker hosts

***I:*** Was jij al bij het project betrokken toen het project nog niets met Docker deed?

***R:*** Ja op het moment dat ik binnenkwam was er net een eerste twee Docker containers. En de rest stond toen nog op de virtual machines.

***I:*** Dat is nu nog steeds zo toch?

***R:*** Nee we hebben onderhand alles al wel omgezet. Behalve A-select, SIAM,  dat is nog een fysieke server. Niet echt fysiek natuurlijk. De rest is allemaal in Docker. Dus opzich, moet ik zeggen, bevalt het allemaal wel goed. Je hoeft ook niet meer ergens in een wiki bij te houden van 'waar stond die server ook alweer', 'welke was het ook alweer'. Nu ga je gewoon naar het dashboard en start je de juiste applicatie. Copy-paste van ssh en je kunt er even in.

***I:*** Dus wat dat betreft is dit ech een verbetering?

***R:*** Ja.

***I:*** Ik heb begrepen dat eerder het aantal virtuele machines beperkt was dat er als er bepaalde klanten kwamen om te testen dat het dan een heel gedoe was om de juiste data in te laden. Hoe is dat nu?

***R:*** Nouja, we hebben nu een cache database ingericht. We hebben daarvan een backup gemaakt. Als je nu een applicatie start kan je die data weer inladen. Je weet gelijk als je hem start en Bulk gaat repliceren dan weet je precies wat er in zit. We laden een standaard dataset, dus je hebt altijd een goede set. In die zin, als het vernaggeld is of als er getest is dan herstart je het gewoon weer en dan staat de standaard testset gewoon weer klaar. In die zin hoeven we niet zovaak meer naar de dataset te kijken of anders configureren en testsets laden. Dat scheelt wel.

    - Docker enables easier management of data- and test-sets.

***I:*** Hoe kijk je aan tegen het gedeelte van de kwaliteitsrapportage?

***R:*** Opzich is het handig. Kwaliteit en testrapportages komen er netjes uitrollen.

***I:*** Leveren jullie die rapportages op aan de klant?

***R:*** Kwaliteitsrapportage niet, testrapportage wel. De testrapportage willen ze ook graag hebben om te kunnen zien of er getest is en wat er getest is. In het mastertestplan staat ook de verantwoording, dit doet de ontwikkelorganisatie en dit doet de klant. De klant wil graag zien wat er gebeurd is en van 'kijk er is echt daadwerkelijk gestest'. Het is in elk geval een verhaal van wat er gebeurd is. Maar daar zijn wel wat vervelende dingen. Omdat we heel veel projecten hebben, als we dan een story hebben in Applicatie1. Daar hangen logical test cases onder. Maar die story raakt ook Applicatie2. Of over de hele linie moet er een aanpassen worden gedaan. Dan komt er uit de testrapportage dat een story niet gevonden kon worden. Want dan testen we Applicatie2. Een Applicatie1 test case kan dan niet worden gevonden, want die staat in een ander project. Dan moeten we een nep-story maken waar dan dezelfde logical test case onder hangt om het te laten kloppen. Dat is een beetje irritant.

    - Managing logical test cases shared between projects increases administration load.

***I:*** Overbodige administratie dus?

***R:*** Ja, eigenlijk overbodige administratie. Maargoed. We zijn bezig om Jira wat te consolideren. We zijn uberhaupt bezig om alle applicaties aan te pakken en meer samen te voegen. We zijn ook bezig met 1 Jira project om daar alles onder te hangen. Dus dan zullen we hier niet zoveel last meer van hebben. De testrapportage opzich werkt uitstekend.

***I:*** Waarom leveren jullie de kwaliteitsrapportage niet op?

***R:*** Ja, daar staan ook heel veel dingen in van 'is niet goed', of 'doet het nog niet'. Dat komt omdat we uberhaupt veel componenten hebben waar een jaar of twee jaar niet aangewerkt is en waar ik zelf nog nooit aan gewerkt heb. Daar staan dan issues op omdat we dan een nieuw kwaliteitsprofiel hebben. Dus tja, das is leuk maar hallo. Daar gaan we nu echt niet naar kijken, maar het staat allemaal wel in die rapportage. Dus als je dat dan oplevert wat zegt dat dan? Er staan veel rode dingen. De klant is er ook niet echt in geintereseerd. Hij wil weten dat er getest is. En ja, wat de kwaliteit voor de rest is. Hij gaat er vanuit dat het niet al te best is. Dus tja, en dat is misschien ook wel zo. Maar het wordt beter. We gaan nu een begin maken om er doorheen te lopen en dingen vernieuw. Dan gaan we wel weer voldoen aan de kwaliteitseisen.

    - Quality report contains many violations
    - Customer is not interested in quality report

***I:*** Jullie kijken zelf wel naar de Sonar rapportages?

***R:*** Dat is natuurlijk een onderdeel van de kwaliteitsrapportage. Dat deel is over het algemeen slecht. We doen er wel wat mee. Als er echt majors bijkomen. Op een bepaald moment hadden we een nieuw profiel. We zagen door de bomen het bos niet meer. Welke issues zijn er nou bijgekomen en welke waren er al? We kunnen dat allemaal niet fixen. Toen is er op een bepaald moment besloten om toch maar weer een ouder profiel te laden. Zo hadden we weer zicht op wat er bijgemaakt was aan fouten. Dat lossen we dan op, zorgen dat er geen majors bijkomen. Dat is het dan wel. Dus ja, dat werkt opzich wel. Maar voor ons om het bij te houden is het een beetje te veel.

    - Team tries to prevent new major quality violations

***I:*** Er zijn nu veel mogelijkheden om zelf applicaties en ondersteunende services te starten. Maak je daar gebruik van? Heb je zoiets van, ik wil een bepaalde tool gebruiken of op een bepaalde manier inzetten? Er is nu mogelijkheid om naar eigen inzicht tooling te starten. Het is mogelijk om af te wijken van de standaardtooling als Jenkins, Gitlab e.d.

***R:*** Nee, ik vind het een goede toolkeuze. Jenkins is gewoon een goede tool. Gitlab is ook gewoon een goede tool. Dus ik heb in die zin niet de behoefte om iets anders te starten. De standaard toolset is gewoon een goede keuze. Als je iets nodig zou hebben daar rondom, dan kun je dat natuurlijk starten. Ik heb nog niet zoiets gehad van ik heb echt dit nodig.

    - Default tool selection is sufficient
    - Team didn't make use of possibility to shape their own CI/CD environment

***I:*** Je kunt nu natuurlijk ook Gitlab gebruiken als CI-server, dus je zou alles kunnen overzetten vanuit Jenkins.

***R:*** Dat is niet iets wat we leuk vinden om te gaan doen. en sowieso, als je alles over moet gaan zetten is dat geen pretje. Het is heel veel werk. Dus als het eenmaal draait in Jenkins dan is het goed zo. Maarja, er zijn wel dingen die we meer willen automatiseren met Docker containers. Stel je hebt een release gedaan van een component dan willen we ook automatisch de Docker container updaten. Dat is heel leuk, dat willen we. Waarschijnlijk zullen we dat alleen doen voor de nieuwe componenten die we gaan maken. Dat houdt het ook overzichtelijk. Het is wel iets dat we graag willen. Je hebt dan niet zoveel stappen aan het eind van een story om alles helemaal rond te krijgen. We moeten dan componenten releasen. In de meeste gevallen hebben we zo'n drie componenten per story. En dan moet het nog in Docker gezet worden, de containers moeten gemaakt worden, pushen. Het zou wel makkelijk zijn dat als je een release maakt dat de containers dan automatisch geupdated worden. Maar dat zit er nog niet in. Het komt allemaal een beetje op hetzelfde neer. Het is veel te veel! Het kost veel tijd, waardoor we het dan toch laten zitten.

    - Increasing build automation is seen as an expensive and time consuming investment.

***I:*** Hoe zou je de basiskennis van al die tooling beschrijven? Zijn jullie experts? Hadden jullie al kennis van de tooling toen je aan het project begon, of heb je die tijdens het project opgedaan?

***R:*** Nee geen experts. Voor dit project had ik ook al Jenkins gebruikt. Daarvan weet ik wel wat het ongeveer kan en welke plugins je nodig hebt. In die zin, als gebruiker hebben we de kennis wel. Echt geavanceerde dingen dan moeten we ook echt even gaan zoeken. In het vorige project maakte ik ook gebruik van Docker, dus ik kende Docker wel. Maar het is hier wel lekker opgezet met het dashboard enzo. Dat maakt het allemaal wel makkelijker om het te gebruiken. Je hoeft niet eens zo heel veel van Docker te weten om het te gebruiken. Dus ja, basis dingen weten we wel en iets geavanceerder ook wel. Maar we moeten ook wel even zoeken.

    - Little Docker knowledge is needed to get started in current environment
    - CI/CD setup with default tooling makes it easy to start using it

***I:*** Mis je dat je niet direct op de host kunt kijken? Waar die containers draaien?

***R:*** Nee, op de Docker host hoef ik eigenlijk zelf niet echt te kijken. Het enige is dat als er wat omvalt dat je dan nog wel eens zou willen kijken.

***I:*** Is dat ook de reden dat jullie op de ontwikkelomgevingen de containers eerst bouwen en daar testen? Want als je het dus deployed via het dashboard en het werkt niet, dan weet je eigenlijk niet zo goed hoe of wat.

***R:*** Ja, we bouwen natuurlijk lokaal. Als er iets mis gaat dan zoeken we dat lokaal uit. We hoeven dan dus niet op de host. Als je het gepushed hebt en je start via het dasboard een docker container, als er inderdaad iets mis zou gaan, maar er gaat eigenlijk nooit wat mis. We hebben wel eens gehad dat je pushed en dat de image toch niet aankwam. Als je hem dan start dan zie je bijvoorbeeld dat de wijzigingen er niet in zitten. Er was dan vaak een probleem met resources op de host waardoor de nieuwe image niet goed doorkwam. Maar voor de rest heb ik nooit de behoefte gehad om zelf op die host te kijken.

    - Local builds are done to prevent problems on CI/CD environment.
    - Problems on CI/CD environment are difficult or impossible (due to access restrictions) to debug.

***I:*** En de Docker registry? Waar veel teams problemen mee hebben is dat de disk vol loopt. Er moeten dan oudere images verwijderd worden. Hebben jullie daar last van?

***R:*** Nee. Dat is eigenlijk wel gek.

***I:*** Hoevaak en hoeveel images pushes jullie?

***R:*** In een sprint, stel dat we iets van vier a vijf stories hebben met wijzigingen. Dan hebben we verschillende dingetjes die we zullen pushen. En dat doen we ook wel een paar keer denk ik. Dus ja. Het zijn er niet meerdere per dag. Je draait natuurlijk alles lokaal. Daar testen we eerst en daarna pushen we pas. Per sprint pushen we misschien zes a zeven keer een image. Zoiets zal het zijn. Ik weet niet hoeveel je moet pushen om je registry vol te krijgen?

    - Team releases new image six/seven times per sprint.

***I:*** Nouja. als je Continuous delivery doet met meerdere pushes per dag dan is het snel vol.

***R:*** Ja precies, elke keer als je een wijziging hebt dan wordt het gelijk daarheen gepushed. Ja, wat wij ook nog wel eens doen is nog niet pushen als we nog bezig zijn met een story. Soms willen we dan wel dat Jenkins er al tegenaan gaat testen. En dan deployen we gewoon in de Docker container een nieuwe war of ear.

***I:*** Jullie gebruiken wel een regressietestset? Naast de unittests? Waarin is die gemaakt?

***R:*** Ja, die is gemaakt in Java Selenium. Die draait inderdaad in Jenkins. Dus die test in principe op de testomgeving op Docker. Soms draaien we de testen lokaal. Dat werkt ook en gaat vaak sneller. En ook wel eens op Jenkins. Sommige testen duren drie kwartier, dus daar wil je lokaal niet op wachten. Maar we doen dan geen push, omdat we nog bezig zijn. We doen dan alleen een deployment van een nieuwe war of ear. Dan test Jenkins daar tegenaan.

    - Running integration tests locally is quicker than on CI/CD environment.

***I:*** Op de container?

***R:*** Ja op de container.

***I:*** Aah, op die manier. Sneaky.

***R:*** Ja sneaky heh. Hahaha.

***I:*** Jullie gebruiken het in dat geval eigenlijk als een soort virtuele machine.

***R:*** Ja. Gewoon even de war of ear er op. De tests draaien en als dat allemaal goed is en de story is uiteindelijk klaar bouwen we wel netjes een image.

***I:*** Maar is dat uiteindelijk minder moeite dan elke keer een image bouwen?

***R:*** Ja dat duurt veel langer. Dit gaat sneller.

    - Team uses Docker container as VM to gain time advantage.

***I:*** Hoe vind je de ondersteuning vanuit de organisatie? Door de ondersteundende teams?

***R:*** Goed, als je langsloopt word je geholpen.

***I:*** Je zei eerder dat je al eerder ervaring met Docker had opgedaan. Er was voor jou niet een enorme leercurve op dit te gaan gebruiken?

***R:*** Nee. Sommige scripts waren wel even wat anders dan ik gewend was.

***I:*** Wat bedoel je met de scripts?

***R:*** De dashboard applicatie definitie. Maar het spreekt redelijk voorzich, dus als je een beetje weet hoe het in elkaar zit en werkt dan is het heel simpel op te pakken. Niet zo ingewikkeld. In die zin had ik niet zoiets van 'help, wat moet ik nu'. Maar ook dan, als we vragen hadden dan konden we gewoon langslopen en kregen we vaak direct het antwoord. Dat is uitstekend. Positieve ervaringen.

    - Support teams are easy accessible and help accordingly

***I:*** Dat was het voor nu, als we nog meer vragen hebben dan komen we gewoon later terug.

***R:*** Dat mag.
