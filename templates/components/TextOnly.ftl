[#-- @AZ 152128 - originale MTE textImage --]
[#-------------- INCLUDE AND ASSIGN PART --------------]
[#include "/mte/templates/includes/init.ftl"]

[#-- Image --]
[#-- Basic positioning of an image below or above the text --]
[#-- assign imagePosition = content.imagePosition!"below"--]

[#-- CSS default --]
[#if !divClass?has_content]
    [#assign divClass = "text-section"]
[/#if]

[#--
Image css classes
[#assign hasImage = false]
[#assign imageHtml = ""]
[#if model.image?exists]
    [#assign hasImage = true]
    [#assign divClass = "${divClass} text-image-section"]
    [#assign imageClass = "content-image-${imagePosition}"]

    [#include "/mte/templates/macros/image.ftl"]
    [#assign imageHtml][@image model.image content imageClass false def.parameters /][/#assign]
[/#if]
--]

[#-------------- RENDERING PART --------------]
[#-- Rendering: Text/Image item --]
[#-- <div class="${divClass!}"${divID!}> --]
<div class="solo-testo marketing">
    [#-- Headline --]
    [#if content.headline?has_content]
        <${headlineLevel}>${content.headline!}</${headlineLevel}>
    [/#if]

    [#-- Text --]
    [#if content.text?has_content]
        ${cmsfn.decode(content).text!}
    [/#if]

</div><!-- end ${divClass} -->
