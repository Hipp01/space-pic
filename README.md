<article id="901fd333-5be8-409b-98ea-23a01b4dc891" class="page sans"><header>![](https://www.notion.so/images/page-cover/webb1.jpg)<div class="page-header-icon page-header-icon-with-cover">![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/ic_launcher%201.png)</div>
# Space Pics
</header><div class="page-body">
#                                Space Pictures
&#10;

*__LARZUL Hippolyte__*

&#10;

**Space Pics**est une application mobile d’affichage de photos de l’espace et leurs descriptions, développée en 2022 dans le cadre du cours de Technologies Mobiles.

&#10;

&#10;

**Sommaire :**

<div class="indented"><nav id="6ed4193e-28d0-4015-88b6-1d761c4b77a5" class="table_of_contents"><div class="table_of_contents-item table_of_contents-indent-0">[                               Space Pictures](#07d21a95-f94e-4fda-9ade-550941ca03af)</div><div class="table_of_contents-item table_of_contents-indent-0">[Introduction](#a178e423-b137-4646-ba60-55188fd66a65)</div><div class="table_of_contents-item table_of_contents-indent-0">[Contrat d’interface](#b246b246-e1f7-4bd7-a3d9-07bc618144d3)</div><div class="table_of_contents-item table_of_contents-indent-1">[API NASA](#85407e2b-8fcb-4d34-864c-eded0c6ed067)</div><div class="table_of_contents-item table_of_contents-indent-1">[Traduction](#9059d58a-c857-49a7-a290-7cd1ba31fd18)</div><div class="table_of_contents-item table_of_contents-indent-0">[Explications](#313fe82b-90b3-4ed4-bfd3-5a09280a46c3)</div><div class="table_of_contents-item table_of_contents-indent-1">[    Choix](#af6775e1-fd16-48f2-aaca-3f2f9ac6d988)</div><div class="table_of_contents-item table_of_contents-indent-2">[        Nom et Logo](#f4967f9f-2339-49f9-ac78-e1eedb970689)</div><div class="table_of_contents-item table_of_contents-indent-2">[        API](#358c774f-9e2c-4ba9-8d0a-94bbb3455857)</div><div class="table_of_contents-item table_of_contents-indent-1">[Librairies](#09e95128-9e74-4842-abb5-8e11f6ab74bc)</div><div class="table_of_contents-item table_of_contents-indent-1">[Concepts](#8a4bf4c2-fa68-4ed5-a17f-1023eca49f9e)</div><div class="table_of_contents-item table_of_contents-indent-1">[Parc Matériel](#7a3527a4-f3bb-431f-87a9-d42c4973eeac)</div><div class="table_of_contents-item table_of_contents-indent-1">[Fonctionnement de l’application](#987de6a7-3c8e-4179-bbb6-737086a4cb4b)</div><div class="table_of_contents-item table_of_contents-indent-0">[Problèmes rencontrés](#726b8179-cd53-4d76-966a-1a047dcf2a23)</div><div class="table_of_contents-item table_of_contents-indent-0">[Solutions apportées](#7dacb4d5-65df-41fa-8acb-9582d4abecb6)</div></nav></div>

&#10;

&#10;
# Introduction
&#10;

**Space Pics** est une application développée en Flutter pour Android, IOS, Windows Desktop, MacOS, Linux et Web dans le cadre du cours de Technologies Mobiles à l’Université de Lille.

Cette application permet d’admirer des photos de l’espace envoyées par la Nasa une fois par jour, et en connaître davantage en anglais et en français.

La liste des images de la semaine précédente est affichée sur l’écran d’accueil. Le détail avec des informations complémentaires est disponible en cliquant sur une carte.

&#10;

&#10;
# Contrat d’interface
&#10;
## API NASA
&#10;

L’API principale utilisée est celle de la Nasa : <span style="border-bottom-color: initial; border-bottom-style: solid; border-bottom-width: 0.05em;">*__[api.nasa.gov](https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY)__*</span><span style="border-bottom-color: initial; border-bottom-style: solid; border-bottom-width: 0.05em;">*<strong> </strong>*</span>et la route utilisée pour récupérer les informations avec la méthode GET est :

&#10;

<table id="c9fb8f64-f43c-4470-b6ce-328b0dcf690a" class="simple-table"><thead class="simple-table-header"><tr id="b07dfeb7-bc00-48a0-9acb-a01261acce0a"><th id="kLPp" class="simple-table-header-color simple-table-header" style="width: 277px;">Route</th><th id="ESj^" class="simple-table-header-color simple-table-header" style="width: 270px;">Paramètres</th><th id="_vKY" class="simple-table-header-color simple-table-header">Code de retour</th></tr></thead><tbody><tr id="93fed9b1-6d75-4b44-a4c9-63cc0eee7e76"><td id="kLPp" class="" style="width: 277px;">[https://api.nasa.gov/planetary/apod](https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY)</td><td id="ESj^" class="" style="width: 270px;">api_key : string     start_date : string</td><td id="_vKY" class="">200 ; 500</td></tr></tbody></table>

&#10;

**<span style="border-bottom-color: initial; border-bottom-style: solid; border-bottom-width: 0.05em;">Réponse</span>** **:**<mark class="highlight-gray">*(api_key=DEMO_KEY&amp;start_date=2022-09-01)*</mark>

    [
      {
        "copyright": "Peter Kohlmann",
        "date": "2022-09-01",
        "explanation": "Framing a bright emission region, this telescopic view looks out along the plane of our Milky Way Galaxy toward the nebula rich constellation Cygnus the Swan. Popularly called the Tulip Nebula, the reddish glowing cloud of interstellar gas and dust is also found in the 1959 catalog by astronomer Stewart Sharpless as Sh2-101. Nearly 70 light-years across, the complex and beautiful Tulip Nebula blossoms about 8,000 light-years away. Ultraviolet radiation from young energetic stars at the edge of the Cygnus OB3 association, including O star HDE 227018, ionizes the atoms and powers the emission from the Tulip Nebula. Also in the field of view is microquasar Cygnus X-1, one of the strongest X-ray sources in planet Earth's sky. Blasted by powerful jets from a lurking black hole its fainter bluish curved shock front is only just visible though, beyond the cosmic Tulip's petals near the right side of the frame.   Back to School? Learn Science with NASA",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/TulipCygX-1.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "The Tulip and Cygnus X-1",
        "url": "https://apod.nasa.gov/apod/image/2209/TulipCygX-1_1024.jpg"
      },
      {
        "copyright": "Fabian Neyer",
        "date": "2022-09-02",
        "explanation": "Find the Big Dipper and follow the handle away from the dipper's bowl until you get to the last bright star. Then, just slide your telescope a little south and west and you'll come upon this stunning pair of interacting galaxies, the 51st entry in Charles Messier's famous catalog. Perhaps the original spiral nebula, the large galaxy with well defined spiral structure is also cataloged as NGC 5194. Its spiral arms and dust lanes clearly sweep in front of its companion galaxy (left), NGC 5195. The pair are about 31 million light-years distant and officially lie within the angular boundaries of the small constellation Canes Venatici. In direct telescopic views, M51 looks faint and fuzzy to the eye. But this remarkably deep image shows off details of the interacting galaxy's striking colors and galactic tidal debris. The image includes nearly 90 hours of narrowband data that also reveals a vast glowing cloud of reddish ionized hydrogen gas discovered in the M51 system.",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/m51_l2.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "M51: The Whirlpool Galaxy",
        "url": "https://apod.nasa.gov/apod/image/2209/m51_l2_1024.jpg"
      },
      {
        "copyright": "Wang Letian",
        "date": "2022-09-03",
        "explanation": "On August 25 Sun and Moon could both be seen in planet Earth's daytime skies. And so could the International Space Station. The ISS crossed the disk of the waning crescent Moon as seen from Shunyi district, Beijing, China at about 11:02 am local time. Some 40 kilometers to the southwest, in Fengtai district, the ISS was seen to cross the Sun's disk too. The solar transit was observed only 29 seconds later. Both transits are compared in these panels, composed of processed and stacked video frames from the two locations. The coordinated captures were made with different equipment, but adjusted to show the Sun and Moon at the same scale. The ISS was at a calculated range of 435 kilometers for the lunar transit and 491 kilometers when passing in front of the Sun.   Artemis I: Launch Update",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/Interval29seconds_Transit.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "Sun and Moon and ISS",
        "url": "https://apod.nasa.gov/apod/image/2209/Interval29seconds_Transit1200.jpg"
      },
      {
        "copyright": "Rudy Montoya",
        "date": "2022-09-04",
        "explanation": "very step caused the sand to light up blue. That glow was bioluminescence -- a blue radiance that also lights the surf in this surreal scene captured in mid-2018 at Meyer's Creek Beach in Oregon, USA. Volcanic stacks dot the foreground sea, while a thin fog layer scatters light on the horizon. The rays of light spreading from the left horizon were created by car headlights on the Oregon Coast Highway (US 101), while the orange light on the right horizon emanates from a fishing boat.  Visible far in the distance is the band of our Milky Way Galaxy, appearing to rise from a dark rocky outcrop.  Sixteen images were added together to bring up the background Milky Way and to reduce noise.    Your Sky Surprise: What picture did APOD feature on your birthday? (post 1995)",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/MilkyWayOregon_Montoya_1500.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "Sea and Sky Glows over the Oregon Coast",
        "url": "https://apod.nasa.gov/apod/image/2209/MilkyWayOregon_Montoya_960.jpg"
      },
      {
        "date": "2022-09-05",
        "explanation": "Stars created these cliffs. Specifically, the destructive winds and energetic light from the stars in the open cluster NGC 3324 eroded away part of a mountain of dark interstellar dust in the northern part of the Carina Nebula. Several of these stars are visible toward the top of this highly detailed image taken recently by the James Webb Space Telescope, the largest astronomical telescope ever launched. Webb's large mirror and ability to see dust-piercing infrared light has enabled it to capture fascinating details in the dust, hundreds of previously hidden stars, and even some galaxies far in the distance.  The featured jagged cliffs occur in part of Carina known as the Gabriela Mistral Nebula -- because when viewed in another orientation, they appear similar to the facial profile of the famous Chilean poet.  These nebular cliffs occur about 7,600 light years away toward the southern constellation of Carina.   Astrophysicists: Browse 2,800+ codes in the Astrophysics Source Code Library",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/CarinaCliffs_Webb_2000.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "Carina Cliffs from the Webb Space Telescope",
        "url": "https://apod.nasa.gov/apod/image/2209/CarinaCliffs_Webb_1080.jpg"
      },
      {
        "copyright": "Jiaqi Sun （孙嘉琪）",
        "date": "2022-09-06",
        "explanation": "Yes, but how many dark clouds have a multicolored lining? Pictured, behind this darker cloud, is a pileus iridescent cloud, a group of water droplets that have a uniformly similar size and so together diffract different colors of sunlight by different amounts.  The featured image was taken last month in Pu'er, Yunnan Province, China. Also captured were unusual cloud ripples above the pileus cloud.  The formation of a rare pileus cloud capping a common cumulus cloud is an indication that the lower cloud is expanding upward and might well develop into a storm.    Explore Your Universe: Random APOD Generator",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/Pileus_Jiaqi_4032.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "An Iridescent Pileus Cloud over China",
        "url": "https://apod.nasa.gov/apod/image/2209/Pileus_Jiaqi_960.jpg"
      },
      {
        "copyright": "NASAESACSASTScI",
        "date": "2022-09-07",
        "explanation": "Near the center of a nearby star-forming region lies a massive cluster containing some of the largest and hottest stars known.  Collectively known as star cluster NGC 2070, these stars are part of the vast Tarantula Nebula and were captured in two kinds of infrared light by the new Webb Space Telescope.  The main image shows the group of stars at NGC 2070's center -- known as R136 -- in near-infrared, light just a bit too red for humans to see. In contrast, the rollover image captures the cluster center in mid-infrared light, light closer to radio waves.  Since R136's brightest stars emit more of their light in the near infrared, they are much more prominent on that image. This LMC cluster's massive stars emit particle winds and energetic light that are evaporating the gas cloud from which they formed. The Webb images, released yesterday, shows details of R136 and its surroundings that have never been seen before, details that are helping humanity to a better understanding of how all stars are born, evolve and die.",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/TarantulaNearIr_Webb_1396.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "Tarantula Stars R136 from Webb",
        "url": "https://apod.nasa.gov/apod/image/2209/TarantulaNearIr_Webb_960.jpg"
      },
      {
        "copyright": "Frank Sackenheim",
        "date": "2022-09-08",
        "explanation": "Fans of our fair planet might recognize the outlines of these cosmic clouds. On the left, bright emission outlined by dark, obscuring dust lanes seems to trace a continental shape, lending the popular name North America Nebula to the emission region cataloged as NGC 7000. To the right, just off the North America Nebula's east coast, is IC 5070, whose avian profile suggests the Pelican Nebula.  The two bright nebulae are about 1,500 light-years away, part of the same large and complex star forming region, almost as nearby as the better-known Orion Nebula. At that distance, the 3 degree wide field of view would span 80 light-years. This careful cosmic portrait uses narrowband images combined to highlight the bright ionization fronts and the characteristic glow from atomic hydrogen, and oxygen gas. These nebulae can be seen with binoculars from a dark location.  Look northeast of bright star Deneb in Cygnus the Swan, soaring high in the northern summer night sky.",
        "hdurl": "https://apod.nasa.gov/apod/image/2209/NGC7000_NB_2022_2048.jpg",
        "media_type": "image",
        "service_version": "v1",
        "title": "North America and the Pelican",
        "url": "https://apod.nasa.gov/apod/image/2209/NGC7000_NB_2022_1024.jpg"
      }
    ]
&#10;
## Traduction
&#10;

Une autre requête est envoyée pour obtenir la traduction en français de la description d’une image. Cette requête n’est pas faite sur une API, mais sur un site web : <span style="border-bottom-color: initial; border-bottom-style: solid; border-bottom-width: 0.05em;">***[Ciel des Hommes](https://www.cidehom.com/apod.php)***</span> avec comme paramètre la date, la réponse est ensuite réduite pour récupérer uniquement la description en français.

&#10;

<table id="fb25c20f-f533-4ebe-b431-7ff92bdb859f" class="simple-table"><thead class="simple-table-header"><tr id="d1b88edd-9450-4b9c-b725-136997b03812"><th id="kLPp" class="simple-table-header-color simple-table-header" style="width: 277px;">Route</th><th id="ESj^" class="simple-table-header-color simple-table-header" style="width: 151px;">Paramètres</th><th id="_vKY" class="simple-table-header-color simple-table-header" style="width: 163px;">Code de retour</th></tr></thead><tbody><tr id="35d23c4a-9fcd-48ab-85d0-584110d6d520"><td id="kLPp" class="" style="width: 277px;">[https://www.cidehom.com/apod.php](https://www.cidehom.com/apod.php)</td><td id="ESj^" class="" style="width: 151px;">_date : string</td><td id="_vKY" class="" style="width: 163px;">200 ; 500</td></tr></tbody></table>

&#10;

**<span style="border-bottom-color: initial; border-bottom-style: solid; border-bottom-width: 0.05em;">Réponse</span>** **:**<mark class="highlight-gray">*(_date=220908)*</mark>

    &lt;!DOCTYPE html&gt;
    &lt;html lang="fr-FR"&gt;
    	&lt;head&gt;
    	  
    	  &lt;meta charset="utf-8"&gt;
    	  &lt;title&gt;L'Amérique du Nord et le Pélican&lt;/title&gt;
    	  [...]
    	
    	&lt;/head&gt;
    	&lt;body&gt;
    	
    	&lt;div class="contenu980"&gt;
    	
    	  &lt;h1&gt;L'Amérique du Nord et le Pélican&lt;/h1&gt;
    		&lt;p&gt;Si vous êtes fan de notre belle planète, vous reconnaîtrez les contours de ces nuages cosmiques. Sur la gauche, la nébuleuse 
    				par émission est célèbre en partie du fait de sa ressemblance assez frappante avec le continent Nord-Américain, connue sous la référence NGC 7000. Sur la droite près de la côte est de la nébuleuse Amérique du Nord, on trouve la nébuleuse IC 5070 qui 
    				ressemble à un pélican, d'où son nom. Ces deux nébuleuses par émission se trouvent à quelque 1.500 années-lumière, elles font partie d'une grande et complexe région de formation d'étoiles guère plus éloignée de nous que la plus célèbre nébuleuse d'Orion. À leur distance, ce champ de 3° dans notre ciel correspond à une largeur de 80 années-lumière. Cette image travaillée combine différents filtres pour capturer à la fois les fronts lumineux d'ionisation et les rayonnements caractéristiques des atomes d'hydrogène et d'oxygène. Ces deux nébuleuses peuvent être vues avec des jumelles depuis un endroit suffisamment sombre. Vous devrez les chercher au nord-est de la brillante étoile Deneb, dans la constellation du Cygne, qui grimpe haut dans le ciel d'été de l'hémisphère nord.&lt;/p&gt;
    		
    		&lt;div class="item_lien"&gt;
    			&lt;div class="lire_titre"&gt;&lt;b&gt;L'image d'astronomie du jour (Astronomy Picture Of the Day - APOD)&lt;/b&gt;&lt;/div&gt;
    			&lt;div class="lire_signature"&gt;Traduction réalisée par Patrick Babayou&lt;/div&gt;
    		  &lt;div class="lire_signature"&gt;&lt;a href="http://apod.nasa.gov/apod/ap220908.html" target="_blank"&gt;&amp;gt; lire le texte original&lt;/a&gt; sur le site de la NASA&lt;/div&gt;
    			&lt;div class="lire_signature"&gt;Auteurs et éditeurs&amp;nbsp;: &lt;a href='http://antwrp.gsfc.nasa.gov/htmltest/rjn.html' target='_blank'&gt;Robert Nemiroff&lt;/a&gt; (&lt;a href='http://www.phy.mtu.edu/'&gt;MTU&lt;/a&gt;) &amp;amp; &lt;a href='http://antwrp.gsfc.nasa.gov/htmltest/jbonnell/www/bonnell.html' target='_blank'&gt;Jerry Bonnell&lt;/a&gt; (&lt;a href='http://www.astro.umd.edu/' target='_blank'&gt;UMCP&lt;/a&gt;)&lt;/div&gt;
    			&lt;div class="lire_signature"&gt;Représentant technique de la Nasa&amp;nbsp;: &lt;a href='mailto:jpn@grossc.gsfc.nasa.gov' target='_blank'&gt;Jay Norris&lt;/a&gt;&lt;/div&gt;
    			&lt;div class="lire_signature"&gt;Un service de&amp;nbsp;: &lt;a href='http://science.gsfc.nasa.gov/sed/index.cfm?fuseAction=home.main&amp;&amp;navOrgCode=660' target='_blank'&gt;ASD&lt;/a&gt; de &lt;a href='http://www.nasa.gov/' target='_blank'&gt;NASA&lt;/a&gt; / &lt;a href='http://www.gsfc.nasa.gov/' target='_blank'&gt;GSFC&lt;/a&gt; &amp; &lt;a href='http://www.mtu.edu/' target='_blank'&gt;Michigan Tech. U.&lt;/a&gt;&lt;/div&gt;
    		&lt;/div&gt;
    	&lt;/div&gt;
    	
    	[...]
    	  
    	&lt;/body&gt;
    &lt;/html&gt;
&#10;

Réponse après traitement :

    Si vous êtes fan de notre belle planète, vous reconnaîtrez les contours de ces nuages cosmiques.
    Sur la gauche, la nébuleuse par émission est célèbre en partie du fait de sa ressemblance assez frappante
     avec le continent Nord-Américain, connue sous la référence NGC 7000.
    Sur la droite près de la côte est de la nébuleuse Amérique du Nord, on trouve la nébuleuse IC 5070
    qui ressemble à un pélican, d'où son nom.
    Ces deux nébuleuses par émission se trouvent à quelque 1.500 années-lumière, 
    elles font partie d'une grande et complexe région de formation d'étoiles 
    guère plus éloignée de nous que la plus célèbre nébuleuse d'Orion. 
    À leur distance, ce champ de 3° dans notre ciel correspond à une largeur de 80 années-lumière.
    Cette image travaillée combine différents filtres pour capturer à la fois les fronts lumineux d'ionisation
    et les rayonnements caractéristiques des atomes d'hydrogène et d'oxygène.
    Ces deux nébuleuses peuvent être vues avec des jumelles depuis un endroit suffisamment sombre.
    Vous devrez les chercher au nord-est de la brillante étoile Deneb, dans la constellation du Cygne,
    qui grimpe haut dans le ciel d'été de l'hémisphère nord.
&#10;
# Explications
##     Choix
###         Nom et Logo
&#10;

Le nom de **Space Pics** a été choisi pour exprimer le fait qu’il s’agit de photos de l’espace à observer.

Ce logo a été adopté car il représente l’espace avec la planète et l’exploration avec la fusée. Il existe sous plusieurs formats pour s’adapter à chaque appareil et chaque plateforme.

&#10;

<figure id="1bbcc5d3-c305-4026-88eb-7cdc81f30dd7" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/ic_launcher.png)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/ic_launcher.png)</figure>

&#10;
###         API
&#10;

L’API de la NASA a été choisie avant de savoir la forme et les fonctionnalités de l’application, car il s’agit de la plus grande agence spatiale et que plusieurs API sont proposées au public, avec diverses informations partagées. Parmi toutes les API mises à disposition par la NASA, l’[APOD](https://github.com/nasa/apod-api) a été choisie car il s’agit de la plus populaire et son [site Web](http://apod.nasa.gov/apod/astropix.html) est l'un des&nbsp;[plus populaires](https://analytics.usa.gov/)&nbsp;de tous les organismes fédéraux. 

&#10;

Le site web [Ciel des Hommes](https://www.cidehom.com/apod.php) est le seul site qui correspond aux données fournies par la NASA traduites en français. Il est aussi référencé sur le site officiel [APOD](https://apod.nasa.gov/apod/lib/about_apod.html), qui liste pour chacun des pays un site web et son auteur.

&#10;

&#10;
## Librairies
&#10;

Les librairies utilisées pour l’application sont : 

<table id="272f6d82-77e3-430d-982c-da7716af1881" class="simple-table"><thead class="simple-table-header"><tr id="6d23f40e-b531-4fb2-aae2-49fc278913cf"><th id="U|}O" class="simple-table-header-color simple-table-header" style="width: 349px;">Nom</th><th id="m?I[" class="simple-table-header-color simple-table-header" style="width: 349px;">Description</th></tr></thead><tbody><tr id="f943ebed-2430-42a9-86c5-4f3d3960291e"><td id="U|}O" class="" style="width: 349px;">**[cupertino_icons](https://pub.dev/packages/cupertino_icons)**</td><td id="m?I[" class="" style="width: 349px;">Affichage des icones</td></tr><tr id="3fcb5ccf-ab62-413d-aa2a-99f921501346"><td id="U|}O" class="" style="width: 349px;">**[dio](https://pub.dev/packages/dio)**</td><td id="m?I[" class="" style="width: 349px;">Client Http qui récupère les données des API</td></tr><tr id="ad790eb7-597d-4db2-9be0-6ac70db88fcd"><td id="U|}O" class="" style="width: 349px;">[**json_annotation**](https://pub.dev/packages/json_annotation)</td><td id="m?I[" class="" style="width: 349px;">Définit les annotations utilisées par&nbsp;[json_serializable](https://pub.dev/packages/json_serializable)&nbsp;pour créer du code pour la sérialisation et la désérialisation JSON</td></tr><tr id="ed2a6e73-9972-4af3-9b08-6810cd504771"><td id="U|}O" class="" style="width: 349px;">**[youtube_player_flutter](https://pub.dev/packages/youtube_player_flutter)**</td><td id="m?I[" class="" style="width: 349px;">Plugin Flutter pour lire des vidéos YouTube</td></tr><tr id="8bc65e7e-8023-487a-b418-56d6cbd54e2d"><td id="U|}O" class="" style="width: 349px;">**[vimeo_video_player](https://pub.dev/packages/vimeo_video_player)**</td><td id="m?I[" class="" style="width: 349px;">Lecteur vidéo pour les vidéos Vimeo</td></tr><tr id="98058a81-4599-446b-9411-9942e08ec607"><td id="U|}O" class="" style="width: 349px;">**[intl](https://pub.dev/packages/intl)**</td><td id="m?I[" class="" style="width: 349px;">Fournit des fonctionnalités d'internationalisation et de localisation, utile pour les formats de date</td></tr><tr id="0af4bbb3-1149-45d6-a511-61f62f20d9fe"><td id="U|}O" class="" style="width: 349px;">**[sensors_plus](https://pub.dev/packages/sensors_plus)**</td><td id="m?I[" class="" style="width: 349px;">Un plugin Flutter pour accéder aux capteurs de l'accéléromètre, du gyroscope et du magnétomètre</td></tr><tr id="2eaf1c22-b6a6-4181-b4d2-e2b0de04b938"><td id="U|}O" class="" style="width: 349px;">**[internet_connection_checker](https://pub.dev/packages/internet_connection_checker)**</td><td id="m?I[" class="" style="width: 349px;">Vérificateur de connexion internet</td></tr></tbody></table>

&#10;
## Concepts
&#10;

L’architecture utilisée ici est le MVVM (Model-View-ViewModel) qui est notamment poussée par Google, et qui permet de découpler l'interface utilisateur et le code qui ne lui est pas associé.

Aucune donnée n’est stockée en local, à chaque fois que l’application est lancée, ou que l’utilisateur appuie sur le bouton de rafraîchissement, une requête est envoyée à l’API pour récupérer les informations et les afficher.

Toutefois, si l’appareil n’est pas connecté à internet, et donc ne peut envoyer de requête, un pop-up s’affiche pour prévenir l’utilisateur.

Tant que l’API ne renvoie pas de réponse, un écran de chargement s’affiche.

Le capteur d’accélération est utilisé pour détécter une secousse de l’utilisateur et ainsi afficher l’image du jour sous forme de pop-up.

&#10;

&#10;
## Parc Matériel
&#10;

Space Pics a été conçue pour Android avec une version supérieure ou égale à 10. La version ciblée est Android 12 pour permettre de développer avec les dernières fonctionnalités.

Grâce à Flutter, l’application est un logiciel multiplateforme et peut être disponible sur Android, IOS, Windows Desktop, MacOS, Linux et Web. 

&#10;

&#10;
## Fonctionnement de l’application
&#10;

L’application est très simple et intuitive à utiliser. Le but est d’afficher la photo du jour envoyée par la NASA avec sa description, puis la même chose pour la semaine précédente.

&#10;

En haut de la page principale une image est affichée en grand avec une planète, puis plus bas une grille de sept images correspondant aux sept jours précédents peut être défilée.

Ces images sont sélectionnées en fonction de la description du jour correspondant, si celle-ci contient le nom d’une planète, un dessin de la planète est choisi pour illustrer le jour précis.

Quand l’utilisateur clique sur l’une de ces images, une nouvelle page apparaît avec le détail du jour comprenant :

<div class="indented">

- Le titre de la photo
- La photo du jour
- La date
- La description
- Un bouton pour traduire
- Un bouton de retour

</div>

&#10;

&#10;

Plusieurs fonctionnalités sont disponibles en plus de l’affichage des photos :

<div class="indented">

- Le rafraîchissement de la vue principale en appuyant sur le bouton ‘refresh’
- La traduction en français de la description d’une photo est possible en cliquant sur le bouton ‘Translate’
- Quand l’utilisateur secoue son mobile, l’image du jour s’affiche
- Si l’utilisateur n’est pas connecté à internet, un pop-up d’erreur lui sera renvoyé

&#10;

</div>

&#10;

&#10;

Les screenshots suivants montrent le fonctionnement de l’application.

<div class="indented">

&#10;

</div><div id="1cbca385-aca7-4a97-8af3-57f22fd40bd7" class="column-list"><div id="cd40e7c9-f2a7-4cce-8a9f-a203106a3599" style="width: 33.333332%;" class="column"><figure id="3dc774ea-4d58-4162-bda4-755319f85529" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625549.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625549.jpg)</figure></div><div id="b2b4f63b-d716-4ea4-b1e6-ed7f87f116d9" style="width: 33.333332%;" class="column"><figure id="fd2a0650-128a-4098-9fb4-be94f64ddeea" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672403253880.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672403253880.jpg)</figure></div><div id="163e6199-c329-461e-a30e-f27a86b9ea41" style="width: 33.333332%;" class="column"><figure id="d21fbe0b-b02d-4581-9ff7-25887b313f88" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625542.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625542.jpg)</figure></div></div><div id="6029796f-d1df-4070-9911-009cdd93d987" class="column-list"><div id="a37a14e4-93f9-4408-b13c-bd164886c0ea" style="width: 33.333332%;" class="column"><figure id="6be6f98d-cda1-4a45-9a4d-a04c2245ff63" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1.jpg)</figure><figure id="81715fd3-37e7-4b7f-8747-9b62515094bf" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625513_2.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625513_2.jpg)</figure></div><div id="72a53b77-00ec-403a-8604-f9089e1d03a6" style="width: 33.333332%;" class="column"><figure id="e8c8ad9b-a454-4d93-b6fe-679e88c7b838" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1%201.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1%201.jpg)</figure><figure id="85f28348-4fb3-47ea-9e18-ff0da621bfde" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625520_2.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625520_2.jpg)</figure></div><div id="f706d528-f207-44fe-9109-4ba9e7fa725c" style="width: 33.333332%;" class="column"><figure id="c128e5e9-7b85-43c2-8169-ab5ad01adb2e" class="image">[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625534.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625534.jpg)</figure></div></div>

&#10;

&#10;
# Problèmes rencontrés
&#10;
1. Choisir l’image à afficher comme couverture

1. L’ordre des données renvoyées pour le listing s’affiche par défaut dans l’ordre décroissant

1.  À certains moments la photo du jour est une vidéo, le format change donc et il faut afficher et pouvoir jouer des vidéos

1. Le capteur d’accélération est très sensible et renvoie des données à chaque micro-mouvement du mobile

1. Afficher un seul pop-up quand le mobile est secoué

1. Savoir quand le mobile est connecté à internet

1. Comment avoir une traduction de la description
        
    - Changement de type de date pour la traduction
    - Découper la réponse pour la traduction

&#10;

&#10;
# Solutions apportées
&#10;
1. Deux fonctions ont été crées pour choisir l’image :
        
    - La première détecte les planètes citées dans la description et renvoie l’illustration de la planète correspondante.
    - Si aucune planète n’est citée, une image aléatoire est renvoyée.

1. Dans l’affichage de grille, prendre la longueur de la liste de données, et la parcourir à l’envers.

1. Les vidéos sont toujours sous le format Youtube ou Viméo, il a donc fallu ajouter la distinction et importer deux plugins pour jouer ces vidéos. Cette fonctionnalité n’est disponible que sur mobile.

1. Une calibration et des tests ont été menés pour adapter la détection à une secousse volontaire du mobile par l’utilisateur.

1. Au début, dès que le capteur reconnaîssait une secousse, un pop-up apparaîssait en surcouche du précédent, ce qui donnait rapidement une dizaine de pop-up superposés. Un booléen pour savoir quand le pop-up est affiché ou non a été mis en place.

1. Beaucoup de librairies existent pour avoir ces informations. Une fonction détecte au démarrage s’il est possible de se connecter à internet, si non un pop-up est renvoyé.

1. Aucune donnée de la NASA n’est renvoyée traduite, il a donc fallu les trouver autre part. Sur le site officiel il y a une liste des pays, avec pour chacun un site de référence. Les données peuvent donc être récupérées de là avec une nouvelle requête.
        
    - Une page est consacrée à chaque jour, avec pour paramètre la date mais sous un format différent de celui récupéré initialement. Des manipulations sont alors appliquées sur la date dans la requête pour ensuite obtenir la page de chaque jour.
    - La donnée récupérée est alors du code HTML, qui est ensuite découpé selon une balise ‘&lt;p&gt;’ pour obtenir la description en français, qui est affichée quand l’utilisateur clique sur le bouton ‘Translate’.

&#10;

</div></article>