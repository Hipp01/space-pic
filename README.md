 Space Pics /\* cspell:disable-file */ /* webkit printing magic: print all background colors */ html { -webkit-print-color-adjust: exact; } * { box-sizing: border-box; -webkit-print-color-adjust: exact; } html, body { margin: 0; padding: 0; } @media only screen { body { margin: 2em auto; max-width: 900px; color: rgb(55, 53, 47); } } body { line-height: 1.5; white-space: pre-wrap; } a, a.visited { color: inherit; text-decoration: underline; } .pdf-relative-link-path { font-size: 80%; color: #444; } h1, h2, h3 { letter-spacing: -0.01em; line-height: 1.2; font-weight: 600; margin-bottom: 0; } .page-title { font-size: 2.5rem; font-weight: 700; margin-top: 0; margin-bottom: 0.75em; } h1 { font-size: 1.875rem; margin-top: 1.875rem; } h2 { font-size: 1.5rem; margin-top: 1.5rem; } h3 { font-size: 1.25rem; margin-top: 1.25rem; } .source { border: 1px solid #ddd; border-radius: 3px; padding: 1.5em; word-break: break-all; } .callout { border-radius: 3px; padding: 1rem; } figure { margin: 1.25em 0; page-break-inside: avoid; } figcaption { opacity: 0.5; font-size: 85%; margin-top: 0.5em; } mark { background-color: transparent; } .indented { padding-left: 1.5em; } hr { background: transparent; display: block; width: 100%; height: 1px; visibility: visible; border: none; border-bottom: 1px solid rgba(55, 53, 47, 0.09); } img { max-width: 100%; } @media only print { img { max-height: 100vh; object-fit: contain; } } @page { margin: 1in; } .collection-content { font-size: 0.875rem; } .column-list { display: flex; justify-content: space-between; } .column { padding: 0 1em; } .column:first-child { padding-left: 0; } .column:last-child { padding-right: 0; } .table\_of\_contents-item { display: block; font-size: 0.875rem; line-height: 1.3; padding: 0.125rem; } .table\_of\_contents-indent-1 { margin-left: 1.5rem; } .table\_of\_contents-indent-2 { margin-left: 3rem; } .table\_of\_contents-indent-3 { margin-left: 4.5rem; } .table\_of\_contents-link { text-decoration: none; opacity: 0.7; border-bottom: 1px solid rgba(55, 53, 47, 0.18); } table, th, td { border: 1px solid rgba(55, 53, 47, 0.09); border-collapse: collapse; } table { border-left: none; border-right: none; } th, td { font-weight: normal; padding: 0.25em 0.5em; line-height: 1.5; min-height: 1.5em; text-align: left; } th { color: rgba(55, 53, 47, 0.6); } ol, ul { margin: 0; margin-block-start: 0.6em; margin-block-end: 0.6em; } li > ol:first-child, li > ul:first-child { margin-block-start: 0.6em; } ul > li { list-style: disc; } ul.to-do-list { text-indent: -1.7em; } ul.to-do-list > li { list-style: none; } .to-do-children-checked { text-decoration: line-through; opacity: 0.375; } ul.toggle > li { list-style: none; } ul { padding-inline-start: 1.7em; } ul > li { padding-left: 0.1em; } ol { padding-inline-start: 1.6em; } ol > li { padding-left: 0.2em; } .mono ol { padding-inline-start: 2em; } .mono ol > li { text-indent: -0.4em; } .toggle { padding-inline-start: 0em; list-style-type: none; } /* Indent toggle children */ .toggle > li > details { padding-left: 1.7em; } .toggle > li > details > summary { margin-left: -1.1em; } .selected-value { display: inline-block; padding: 0 0.5em; background: rgba(206, 205, 202, 0.5); border-radius: 3px; margin-right: 0.5em; margin-top: 0.3em; margin-bottom: 0.3em; white-space: nowrap; } .collection-title { display: inline-block; margin-right: 1em; } .simple-table { margin-top: 1em; font-size: 0.875rem; empty-cells: show; } .simple-table td { height: 29px; min-width: 120px; } .simple-table th { height: 29px; min-width: 120px; } .simple-table-header-color { background: rgb(247, 246, 243); color: black; } .simple-table-header { font-weight: 500; } time { opacity: 0.5; } .icon { display: inline-block; max-width: 1.2em; max-height: 1.2em; text-decoration: none; vertical-align: text-bottom; margin-right: 0.5em; } img.icon { border-radius: 3px; } .user-icon { width: 1.5em; height: 1.5em; border-radius: 100%; margin-right: 0.5rem; } .user-icon-inner { font-size: 0.8em; } .text-icon { border: 1px solid #000; text-align: center; } .page-cover-image { display: block; object-fit: cover; width: 100%; max-height: 30vh; } .page-header-icon { font-size: 3rem; margin-bottom: 1rem; } .page-header-icon-with-cover { margin-top: -0.72em; margin-left: 0.07em; } .page-header-icon img { border-radius: 3px; } .link-to-page { margin: 1em 0; padding: 0; border: none; font-weight: 500; } p > .user { opacity: 0.5; } td > .user, td > time { white-space: nowrap; } input\[type="checkbox"\] { transform: scale(1.5); margin-right: 0.6em; vertical-align: middle; } p { margin-top: 0.5em; margin-bottom: 0.5em; } .image { border: none; margin: 1.5em 0; padding: 0; border-radius: 0; text-align: center; } .code, code { background: rgba(135, 131, 120, 0.15); border-radius: 3px; padding: 0.2em 0.4em; border-radius: 3px; font-size: 85%; tab-size: 2; } code { color: #eb5757; } .code { padding: 1.5em 1em; } .code-wrap { white-space: pre-wrap; word-break: break-all; } .code > code { background: none; padding: 0; font-size: 100%; color: inherit; } blockquote { font-size: 1.25em; margin: 1em 0; padding-left: 1em; border-left: 3px solid rgb(55, 53, 47); } .bookmark { text-decoration: none; max-height: 8em; padding: 0; display: flex; width: 100%; align-items: stretch; } .bookmark-title { font-size: 0.85em; overflow: hidden; text-overflow: ellipsis; height: 1.75em; white-space: nowrap; } .bookmark-text { display: flex; flex-direction: column; } .bookmark-info { flex: 4 1 180px; padding: 12px 14px 14px; display: flex; flex-direction: column; justify-content: space-between; } .bookmark-image { width: 33%; flex: 1 1 180px; display: block; position: relative; object-fit: cover; border-radius: 1px; } .bookmark-description { color: rgba(55, 53, 47, 0.6); font-size: 0.75em; overflow: hidden; max-height: 4.5em; word-break: break-word; } .bookmark-href { font-size: 0.75em; margin-top: 0.25em; } .sans { font-family: ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol"; } .code { font-family: "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace; } .serif { font-family: Lyon-Text, Georgia, ui-serif, serif; } .mono { font-family: iawriter-mono, Nitti, Menlo, Courier, monospace; } .pdf .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK JP'; } .pdf:lang(zh-CN) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK SC'; } .pdf:lang(zh-TW) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK TC'; } .pdf:lang(ko-KR) .sans { font-family: Inter, ui-sans-serif, -apple-system, BlinkMacSystemFont, "Segoe UI", Helvetica, "Apple Color Emoji", Arial, sans-serif, "Segoe UI Emoji", "Segoe UI Symbol", 'Twemoji', 'Noto Color Emoji', 'Noto Sans CJK KR'; } .pdf .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK JP'; } .pdf:lang(zh-CN) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK SC'; } .pdf:lang(zh-TW) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK TC'; } .pdf:lang(ko-KR) .code { font-family: Source Code Pro, "SFMono-Regular", Menlo, Consolas, "PT Mono", "Liberation Mono", Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK KR'; } .pdf .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK JP'; } .pdf:lang(zh-CN) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK SC'; } .pdf:lang(zh-TW) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK TC'; } .pdf:lang(ko-KR) .serif { font-family: PT Serif, Lyon-Text, Georgia, ui-serif, serif, 'Twemoji', 'Noto Color Emoji', 'Noto Serif CJK KR'; } .pdf .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK JP'; } .pdf:lang(zh-CN) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK SC'; } .pdf:lang(zh-TW) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK TC'; } .pdf:lang(ko-KR) .mono { font-family: PT Mono, iawriter-mono, Nitti, Menlo, Courier, monospace, 'Twemoji', 'Noto Color Emoji', 'Noto Sans Mono CJK KR'; } .highlight-default { color: rgba(55, 53, 47, 1); } .highlight-gray { color: rgba(120, 119, 116, 1); fill: rgba(120, 119, 116, 1); } .highlight-brown { color: rgba(159, 107, 83, 1); fill: rgba(159, 107, 83, 1); } .highlight-orange { color: rgba(217, 115, 13, 1); fill: rgba(217, 115, 13, 1); } .highlight-yellow { color: rgba(203, 145, 47, 1); fill: rgba(203, 145, 47, 1); } .highlight-teal { color: rgba(68, 131, 97, 1); fill: rgba(68, 131, 97, 1); } .highlight-blue { color: rgba(51, 126, 169, 1); fill: rgba(51, 126, 169, 1); } .highlight-purple { color: rgba(144, 101, 176, 1); fill: rgba(144, 101, 176, 1); } .highlight-pink { color: rgba(193, 76, 138, 1); fill: rgba(193, 76, 138, 1); } .highlight-red { color: rgba(212, 76, 71, 1); fill: rgba(212, 76, 71, 1); } .highlight-gray\_background { background: rgba(241, 241, 239, 1); } .highlight-brown\_background { background: rgba(244, 238, 238, 1); } .highlight-orange\_background { background: rgba(251, 236, 221, 1); } .highlight-yellow\_background { background: rgba(251, 243, 219, 1); } .highlight-teal\_background { background: rgba(237, 243, 236, 1); } .highlight-blue\_background { background: rgba(231, 243, 248, 1); } .highlight-purple\_background { background: rgba(244, 240, 247, 0.8); } .highlight-pink\_background { background: rgba(249, 238, 243, 0.8); } .highlight-red\_background { background: rgba(253, 235, 236, 1); } .block-color-default { color: inherit; fill: inherit; } .block-color-gray { color: rgba(120, 119, 116, 1); fill: rgba(120, 119, 116, 1); } .block-color-brown { color: rgba(159, 107, 83, 1); fill: rgba(159, 107, 83, 1); } .block-color-orange { color: rgba(217, 115, 13, 1); fill: rgba(217, 115, 13, 1); } .block-color-yellow { color: rgba(203, 145, 47, 1); fill: rgba(203, 145, 47, 1); } .block-color-teal { color: rgba(68, 131, 97, 1); fill: rgba(68, 131, 97, 1); } .block-color-blue { color: rgba(51, 126, 169, 1); fill: rgba(51, 126, 169, 1); } .block-color-purple { color: rgba(144, 101, 176, 1); fill: rgba(144, 101, 176, 1); } .block-color-pink { color: rgba(193, 76, 138, 1); fill: rgba(193, 76, 138, 1); } .block-color-red { color: rgba(212, 76, 71, 1); fill: rgba(212, 76, 71, 1); } .block-color-gray\_background { background: rgba(241, 241, 239, 1); } .block-color-brown\_background { background: rgba(244, 238, 238, 1); } .block-color-orange\_background { background: rgba(251, 236, 221, 1); } .block-color-yellow\_background { background: rgba(251, 243, 219, 1); } .block-color-teal\_background { background: rgba(237, 243, 236, 1); } .block-color-blue\_background { background: rgba(231, 243, 248, 1); } .block-color-purple\_background { background: rgba(244, 240, 247, 0.8); } .block-color-pink\_background { background: rgba(249, 238, 243, 0.8); } .block-color-red\_background { background: rgba(253, 235, 236, 1); } .select-value-color-pink { background-color: rgba(245, 224, 233, 1); } .select-value-color-purple { background-color: rgba(232, 222, 238, 1); } .select-value-color-green { background-color: rgba(219, 237, 219, 1); } .select-value-color-gray { background-color: rgba(227, 226, 224, 1); } .select-value-color-opaquegray { background-color: rgba(255, 255, 255, 0.0375); } .select-value-color-orange { background-color: rgba(250, 222, 201, 1); } .select-value-color-brown { background-color: rgba(238, 224, 218, 1); } .select-value-color-red { background-color: rgba(255, 226, 221, 1); } .select-value-color-yellow { background-color: rgba(253, 236, 200, 1); } .select-value-color-blue { background-color: rgba(211, 229, 239, 1); } .checkbox { display: inline-flex; vertical-align: text-bottom; width: 16; height: 16; background-size: 16px; margin-left: 2px; margin-right: 5px; } .checkbox-on { background-image: url("data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2016%2016%22%20fill%3D%22none%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%0A%3Crect%20width%3D%2216%22%20height%3D%2216%22%20fill%3D%22%2358A9D7%22%2F%3E%0A%3Cpath%20d%3D%22M6.71429%2012.2852L14%204.9995L12.7143%203.71436L6.71429%209.71378L3.28571%206.2831L2%207.57092L6.71429%2012.2852Z%22%20fill%3D%22white%22%2F%3E%0A%3C%2Fsvg%3E"); } .checkbox-off { background-image: url("data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%2216%22%20height%3D%2216%22%20viewBox%3D%220%200%2016%2016%22%20fill%3D%22none%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%3E%0A%3Crect%20x%3D%220.75%22%20y%3D%220.75%22%20width%3D%2214.5%22%20height%3D%2214.5%22%20fill%3D%22white%22%20stroke%3D%22%2336352F%22%20stroke-width%3D%221.5%22%2F%3E%0A%3C%2Fsvg%3E"); }

![](https://www.notion.so/images/page-cover/webb1.jpg)

![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/ic_launcher%201.png)

Space Pics
==========

Space Pictures
==============

_**LARZUL Hippolyte**_

**Space Pics** est une application mobile d’affichage de photos de l’espace et leurs descriptions, développée en 2022 dans le cadre du cours de Technologies Mobiles.

**Sommaire :**

[Space Pictures](#07d21a95-f94e-4fda-9ade-550941ca03af)

[Introduction](#a178e423-b137-4646-ba60-55188fd66a65)

[Contrat d’interface](#b246b246-e1f7-4bd7-a3d9-07bc618144d3)

[API NASA](#85407e2b-8fcb-4d34-864c-eded0c6ed067)

[Traduction](#9059d58a-c857-49a7-a290-7cd1ba31fd18)

[Explications](#313fe82b-90b3-4ed4-bfd3-5a09280a46c3)

[Choix](#af6775e1-fd16-48f2-aaca-3f2f9ac6d988)

[Nom et Logo](#f4967f9f-2339-49f9-ac78-e1eedb970689)

[API](#358c774f-9e2c-4ba9-8d0a-94bbb3455857)

[Librairies](#09e95128-9e74-4842-abb5-8e11f6ab74bc)

[Concepts](#8a4bf4c2-fa68-4ed5-a17f-1023eca49f9e)

[Parc Matériel](#7a3527a4-f3bb-431f-87a9-d42c4973eeac)

[Fonctionnement de l’application](#987de6a7-3c8e-4179-bbb6-737086a4cb4b)

[Problèmes rencontrés](#726b8179-cd53-4d76-966a-1a047dcf2a23)

[Solutions apportées](#7dacb4d5-65df-41fa-8acb-9582d4abecb6)

Introduction
============

**Space Pics** est une application développée en Flutter pour Android, IOS, Windows Desktop, MacOS, Linux et Web dans le cadre du cours de Technologies Mobiles à l’Université de Lille.

Cette application permet d’admirer des photos de l’espace envoyées par la Nasa une fois par jour, et en connaître davantage en anglais et en français.

La liste des images de la semaine précédente est affichée sur l’écran d’accueil. Le détail avec des informations complémentaires est disponible en cliquant sur une carte.

Contrat d’interface
===================

API NASA
--------

L’API principale utilisée est celle de la Nasa : _**[api.nasa.gov](https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY)**_  et la route utilisée pour récupérer les informations avec la méthode GET est :

| Route | Paramètres | Code de retour |
| --- | --- | --- |
| [https://api.nasa.gov/planetary/apod](https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY) | api\_key : string start\_date : string | 200 ; 500 |

**Réponse** **:** _(api\_key=DEMO\_KEY&start_date=2022-09-01)_

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

Traduction
----------

Une autre requête est envoyée pour obtenir la traduction en français de la description d’une image. Cette requête n’est pas faite sur une API, mais sur un site web : **_[Ciel des Hommes](https://www.cidehom.com/apod.php)_** avec comme paramètre la date, la réponse est ensuite réduite pour récupérer uniquement la description en français.

| Route | Paramètres | Code de retour |
| --- | --- | --- |
| [https://www.cidehom.com/apod.php](https://www.cidehom.com/apod.php) | _date : string | 200 ; 500 |

**Réponse** **:** _(_date=220908)_

    <!DOCTYPE html>
    <html lang="fr-FR">
    	<head>
    	  
    	  <meta charset="utf-8">
    	  <title>L'Amérique du Nord et le Pélican</title>
    	  [...]
    	
    	</head>
    	<body>
    	
    	<div class="contenu980">
    	
    	  <h1>L'Amérique du Nord et le Pélican</h1>
    		<p>Si vous êtes fan de notre belle planète, vous reconnaîtrez les contours de ces nuages cosmiques. Sur la gauche, la nébuleuse 
    				par émission est célèbre en partie du fait de sa ressemblance assez frappante avec le continent Nord-Américain, connue sous la référence NGC 7000. Sur la droite près de la côte est de la nébuleuse Amérique du Nord, on trouve la nébuleuse IC 5070 qui 
    				ressemble à un pélican, d'où son nom. Ces deux nébuleuses par émission se trouvent à quelque 1.500 années-lumière, elles font partie d'une grande et complexe région de formation d'étoiles guère plus éloignée de nous que la plus célèbre nébuleuse d'Orion. À leur distance, ce champ de 3° dans notre ciel correspond à une largeur de 80 années-lumière. Cette image travaillée combine différents filtres pour capturer à la fois les fronts lumineux d'ionisation et les rayonnements caractéristiques des atomes d'hydrogène et d'oxygène. Ces deux nébuleuses peuvent être vues avec des jumelles depuis un endroit suffisamment sombre. Vous devrez les chercher au nord-est de la brillante étoile Deneb, dans la constellation du Cygne, qui grimpe haut dans le ciel d'été de l'hémisphère nord.</p>
    		
    		<div class="item_lien">
    			<div class="lire_titre"><b>L'image d'astronomie du jour (Astronomy Picture Of the Day - APOD)</b></div>
    			<div class="lire_signature">Traduction réalisée par Patrick Babayou</div>
    		  <div class="lire_signature"><a href="http://apod.nasa.gov/apod/ap220908.html" target="_blank">&gt; lire le texte original</a> sur le site de la NASA</div>
    			<div class="lire_signature">Auteurs et éditeurs&nbsp;: <a href='http://antwrp.gsfc.nasa.gov/htmltest/rjn.html' target='_blank'>Robert Nemiroff</a> (<a href='http://www.phy.mtu.edu/'>MTU</a>) &amp; <a href='http://antwrp.gsfc.nasa.gov/htmltest/jbonnell/www/bonnell.html' target='_blank'>Jerry Bonnell</a> (<a href='http://www.astro.umd.edu/' target='_blank'>UMCP</a>)</div>
    			<div class="lire_signature">Représentant technique de la Nasa&nbsp;: <a href='mailto:jpn@grossc.gsfc.nasa.gov' target='_blank'>Jay Norris</a></div>
    			<div class="lire_signature">Un service de&nbsp;: <a href='http://science.gsfc.nasa.gov/sed/index.cfm?fuseAction=home.main&&navOrgCode=660' target='_blank'>ASD</a> de <a href='http://www.nasa.gov/' target='_blank'>NASA</a> / <a href='http://www.gsfc.nasa.gov/' target='_blank'>GSFC</a> & <a href='http://www.mtu.edu/' target='_blank'>Michigan Tech. U.</a></div>
    		</div>
    	</div>
    	
    	[...]
    	  
    	</body>
    </html>

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

Explications
============

Choix
-----

### Nom et Logo

Le nom de **Space Pics** a été choisi pour exprimer le fait qu’il s’agit de photos de l’espace à observer.

Ce logo a été adopté car il représente l’espace avec la planète et l’exploration avec la fusée. Il existe sous plusieurs formats pour s’adapter à chaque appareil et chaque plateforme.

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/ic_launcher.png)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/ic_launcher.png)

### API

L’API de la NASA a été choisie avant de savoir la forme et les fonctionnalités de l’application, car il s’agit de la plus grande agence spatiale et que plusieurs API sont proposées au public, avec diverses informations partagées. Parmi toutes les API mises à disposition par la NASA, l’[APOD](https://github.com/nasa/apod-api) a été choisie car il s’agit de la plus populaire et son [site Web](http://apod.nasa.gov/apod/astropix.html) est l'un des [plus populaires](https://analytics.usa.gov/) de tous les organismes fédéraux.

Le site web [Ciel des Hommes](https://www.cidehom.com/apod.php) est le seul site qui correspond aux données fournies par la NASA traduites en français. Il est aussi référencé sur le site officiel [APOD](https://apod.nasa.gov/apod/lib/about_apod.html), qui liste pour chacun des pays un site web et son auteur.

Librairies
----------

Les librairies utilisées pour l’application sont :

| Nom | Description |
| --- | --- |
| **[cupertino_icons](https://pub.dev/packages/cupertino_icons)** | Affichage des icones |
| **[dio](https://pub.dev/packages/dio)** | Client Http qui récupère les données des API |
| [**json_annotation**](https://pub.dev/packages/json_annotation) | Définit les annotations utilisées par [json_serializable](https://pub.dev/packages/json_serializable) pour créer du code pour la sérialisation et la désérialisation JSON |
| **[youtube\_player\_flutter](https://pub.dev/packages/youtube_player_flutter)** | Plugin Flutter pour lire des vidéos YouTube |
| **[vimeo\_video\_player](https://pub.dev/packages/vimeo_video_player)** | Lecteur vidéo pour les vidéos Vimeo |
| **[intl](https://pub.dev/packages/intl)** | Fournit des fonctionnalités d'internationalisation et de localisation, utile pour les formats de date |
| **[sensors_plus](https://pub.dev/packages/sensors_plus)** | Un plugin Flutter pour accéder aux capteurs de l'accéléromètre, du gyroscope et du magnétomètre |
| **[internet\_connection\_checker](https://pub.dev/packages/internet_connection_checker)** | Vérificateur de connexion internet |

Concepts
--------

L’architecture utilisée ici est le MVVM (Model-View-ViewModel) qui est notamment poussée par Google, et qui permet de découpler l'interface utilisateur et le code qui ne lui est pas associé.

Aucune donnée n’est stockée en local, à chaque fois que l’application est lancée, ou que l’utilisateur appuie sur le bouton de rafraîchissement, une requête est envoyée à l’API pour récupérer les informations et les afficher.

Toutefois, si l’appareil n’est pas connecté à internet, et donc ne peut envoyer de requête, un pop-up s’affiche pour prévenir l’utilisateur.

Tant que l’API ne renvoie pas de réponse, un écran de chargement s’affiche.

Le capteur d’accélération est utilisé pour détécter une secousse de l’utilisateur et ainsi afficher l’image du jour sous forme de pop-up.

Parc Matériel
-------------

Space Pics a été conçue pour Android avec une version supérieure ou égale à 10. La version ciblée est Android 12 pour permettre de développer avec les dernières fonctionnalités.

Grâce à Flutter, l’application est un logiciel multiplateforme et peut être disponible sur Android, IOS, Windows Desktop, MacOS, Linux et Web.

Fonctionnement de l’application
-------------------------------

L’application est très simple et intuitive à utiliser. Le but est d’afficher la photo du jour envoyée par la NASA avec sa description, puis la même chose pour la semaine précédente.

En haut de la page principale une image est affichée en grand avec une planète, puis plus bas une grille de sept images correspondant aux sept jours précédents peut être défilée.

Ces images sont sélectionnées en fonction de la description du jour correspondant, si celle-ci contient le nom d’une planète, un dessin de la planète est choisi pour illustrer le jour précis.

Quand l’utilisateur clique sur l’une de ces images, une nouvelle page apparaît avec le détail du jour comprenant :

* Le titre de la photo

* La photo du jour

* La date

* La description

* Un bouton pour traduire

* Un bouton de retour

Plusieurs fonctionnalités sont disponibles en plus de l’affichage des photos :

* Le rafraîchissement de la vue principale en appuyant sur le bouton ‘refresh’

* La traduction en français de la description d’une photo est possible en cliquant sur le bouton ‘Translate’

* Quand l’utilisateur secoue son mobile, l’image du jour s’affiche

* Si l’utilisateur n’est pas connecté à internet, un pop-up d’erreur lui sera renvoyé

Les screenshots suivants montrent le fonctionnement de l’application.

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625549.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625549.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672403253880.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672403253880.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625542.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625542.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625513_2.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625513_2.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1%201.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625527_1%201.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625520_2.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625520_2.jpg)

[![](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625534.jpg)](Space%20Pics%20901fd3335be8409b98ea23a01b4dc891/1672399625534.jpg)

Problèmes rencontrés
====================

1.  Choisir l’image à afficher comme couverture

2.  L’ordre des données renvoyées pour le listing s’affiche par défaut dans l’ordre décroissant

3.  À certains moments la photo du jour est une vidéo, le format change donc et il faut afficher et pouvoir jouer des vidéos

4.  Le capteur d’accélération est très sensible et renvoie des données à chaque micro-mouvement du mobile

5.  Afficher un seul pop-up quand le mobile est secoué

6.  Savoir quand le mobile est connecté à internet

7.  Comment avoir une traduction de la description
    
    * Changement de type de date pour la traduction
    
    * Découper la réponse pour la traduction

Solutions apportées
===================

1.  Deux fonctions ont été crées pour choisir l’image :
    
    * La première détecte les planètes citées dans la description et renvoie l’illustration de la planète correspondante.
    
    * Si aucune planète n’est citée, une image aléatoire est renvoyée.

2.  Dans l’affichage de grille, prendre la longueur de la liste de données, et la parcourir à l’envers.

3.  Les vidéos sont toujours sous le format Youtube ou Viméo, il a donc fallu ajouter la distinction et importer deux plugins pour jouer ces vidéos. Cette fonctionnalité n’est disponible que sur mobile.

4.  Une calibration et des tests ont été menés pour adapter la détection à une secousse volontaire du mobile par l’utilisateur.

5.  Au début, dès que le capteur reconnaîssait une secousse, un pop-up apparaîssait en surcouche du précédent, ce qui donnait rapidement une dizaine de pop-up superposés. Un booléen pour savoir quand le pop-up est affiché ou non a été mis en place.

6.  Beaucoup de librairies existent pour avoir ces informations. Une fonction détecte au démarrage s’il est possible de se connecter à internet, si non un pop-up est renvoyé.

7.  Aucune donnée de la NASA n’est renvoyée traduite, il a donc fallu les trouver autre part. Sur le site officiel il y a une liste des pays, avec pour chacun un site de référence. Les données peuvent donc être récupérées de là avec une nouvelle requête.
    
    * Une page est consacrée à chaque jour, avec pour paramètre la date mais sous un format différent de celui récupéré initialement. Des manipulations sont alors appliquées sur la date dans la requête pour ensuite obtenir la page de chaque jour.
    
    * La donnée récupérée est alors du code HTML, qui est ensuite découpé selon une balise ‘&lt;p&gt;’ pour obtenir la description en français, qui est affichée quand l’utilisateur clique sur le bouton ‘Translate’.