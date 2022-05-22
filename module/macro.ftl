<#macro layout title>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="keywords" content="${meta_keywords!}"/>
    <meta name="description" content="${meta_description!}" />
    
    <link rel="stylesheet" href="${theme_base!}/source/plugins/font-awesome-4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="${theme_base!}/source/plugins/materialize/css/materialize.min.css" media="screen,projection">
    <link rel="stylesheet" href="${theme_base!}/source/plugins/font/iconfont.css">
   
    <link href="${theme_base!}/source/plugins/aos/aos.css" rel="stylesheet">
    <link rel="stylesheet" href="${theme_base!}/source/css/menu.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/photo.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/carousel.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/style.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/indexTop.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/indexPostList.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/postDetail.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/categories.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/link.css">
     <link rel="stylesheet" href="${theme_base!}/source/plugins/prism/prism.css">
     <link rel="stylesheet" href="${theme_base!}/source/plugins/tocbot/tocbot.css">

    <@global.head />

    <title>${title}</title>
</head>
<body>
<div class="container-full">
        <#include "menu.ftl">
        <#nested >
        <#include "footer.ftl">
        <@global.footer  />
</div>

<script type="text/javascript" src="${theme_base!}/source/plugins/jquery-3.5.1/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/plugins/aos/aos.js"></script>
<script type="text/javascript" src="${theme_base!}/source/plugins/font/iconfont.js">
<script type="text/javascript" src="${theme_base!}/source/plugins/materialize/js/materialize.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/plugins/prism/prism.js"></script>
<script type="text/javascript" src="${theme_base!}/source/plugins/echarts/echarts.min.js"></script>
<script type="text/javascript" src="${theme_base!}/source/js/utils.js"></script>

<script>
  AOS.init();
$(document).ready(function () {
    $(window).on('scroll', function () {
        var t = $(window).scrollTop();
        if (t > 2) {
            $("body").addClass("fd-main-bg");
        } else {
            $("body").removeClass("fd-main-bg");
        }
    })
});
</script>
</body>
</html>
</#macro>

