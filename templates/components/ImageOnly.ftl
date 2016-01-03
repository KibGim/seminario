[#-- @AZ 152128 - originale MTE textImage --]
[#-------------- INCLUDE AND ASSIGN PART --------------]
[#include "/mte/templates/includes/init.ftl"]

[#-- Image --]
[#-- Basic positioning of an image below or above the text --]
[#assign imagePosition = content.imagePosition!"below"]

[#-- CSS default --]
[#if !divClass?has_content]
    [#assign divClass = "text-section"]
[/#if]

[#-- Image css classes --]
[#assign hasImage = false]
[#assign imageHtml = ""]
[#if model.image?exists]
    [#assign hasImage = true]
    [#assign divClass = "${divClass} text-image-section"]
    [#-- Originale --]
    [#assign imageClass = "content-image-${imagePosition}"]
    [#-- Forzo --]
    [#assign imageClass = "img-circle piccola"]


    [#include "/mte/templates/macros/image.ftl"]

    [#-- @TODO forzare l'inserimento di
    width="140" height="140"

    dipende dalla macro image.ftl utilizzata:
    https://git.magnolia-cms.com/projects/MODULES/repos/templating-essentials/browse/magnolia-templating-essentials-models/src/main/resources/mte/templates/macros/image.ftl?at=bc99686ba5f1fd4fde4a2835a73622a8ca5bd76d
    <img src="${imageLink}" alt="${imageAlt}" title="${imageTitle}" class="${imgClass}" />


    https://documentation.magnolia-cms.com/display/DOCS/damfn / https://documentation.magnolia-cms.com/display/DOCS53/DAM+API
    >oppure concatenare la stringa "imageHtml" con il testo da aggiungere
    >oppure sfruttare def.parameters :
      YAML es:
        parameters:
          divIDPrefix: teaser
      FTL es:
        [#assign divIDPrefix = def.parameters.divIDPrefix!""]
        [#assign divClass = def.parameters.divClass!""]
        [#assign divID = ""]
        [#if divIDPrefix?has_content]
            [#assign divID = ' id="${divIDPrefix}-${content.@id}"']
        [/#if]

    >oppure sfruttare variation classe legata all'immagine ad hoc..https://documentation.magnolia-cms.com/display/DOCS/Working+with+images

    >oppure visualizzarla piccola tramite CSS (temporaneamente)
    --]
    [#assign imageHtml][@image model.image content imageClass false def.parameters/][/#assign]
[/#if]


[#-------------- RENDERING PART --------------]
[#-- Rendering: Text/Image item --]

[#-- Originale --]
[#-- <div class="${divClass!}"${divID!}> --]
[#-- Scopo (per i featured in paginaBootstrapCarousel):
             <img class="img-circle" src="data:image/gif;base64,R*****" alt="Image" width="140" height="140">
--]
<div>
    [#-- @AZ#151228 Faccio il rendering/elaboro solo l'immagine in ImageOnly  --]
    [#if hasImage]
        ${imageHtml}
    [/#if]
</div><!-- end ${divClass} -->
