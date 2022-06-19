<#if is_index??>
  <div class="carousel carousel-slider center">
  <div class="carousel-fixed-item center">
    <a ><i class="fd-chevron bottom fa fa-chevron-down"></i></a>
  </div>
    <div class="carousel-item fd-carouse" href="#one!">
       <img src="${theme_base!}/source/images/photo4.jpg">
      <h2>${settings.index_title!}</h2>
      <p class="white-text">${settings.index_notice!}</p>
      <#include "social.ftl">
    </div>
</#if>
<#if is_post??>
   <div class="carousel carousel-slider center">
    <div class="carousel-item fd-post-carousel-item" href="#one!">
      <img src="${theme_base!}/source/images/photo4.jpg">
      <h2>${post.title!}</h2>
      <p class="white-text">${post.summary}</p>
    </div>
</#if>
<#if is_categories?? || is_category?? || is_links?? || is_about?? || is_photos?? || is_record?? || is_archives??>
   <div class="carousel carousel-slider center">
    <div class="carousel-item fd-post-carousel-item" href="#one!">
      <img src="${theme_base!}/source/images/photo4.jpg">
      <#if is_category??>
       <h2>${category.name}</h2>
        <p class="white-text">${category.description}</p>
      </#if>
       <#if is_categories??>
       <h2>${settings.index_title!}</h2>
        <p class="white-text">${settings.index_notice!}</p>
      </#if>
      <#if is_links??>
       <h2>${settings.index_title!}</h2>
        <p class="white-text">${settings.index_notice!}</p>
      </#if>
       <#if is_about??>
       <h2>关于我</h2>
        <p class="white-text">关于我</p>
      </#if>
      <#if is_photos??>
       <h2>旅行</h2>
        <p class="white-text">旅行</p>
      </#if>
       <#if is_record??>
       <h2>赞助墙</h2>
        <p class="white-text">赞助墙</p>
      </#if>
       <#if is_archives??>
       <h2>文章归档</h2>
        <p class="white-text">文章归档</p>
      </#if>
    </div>
</#if>
<#if is_index??>
      <#list posts.content as post>
      <#if post.topped == true>
        <div class="carousel-item fd-carouse" href="#one!">
          <img src="${post.thumbnail!}">
          <h2>${post.title!}</h2>
          <p class="white-text">${post.summary}</p>
          <a class="fd-botton" href="${post.fullPath!}">查看更多</a>
        </div>
        </#if>
    </#list>
</#if>


   
  </div>
  <script type="text/javascript" src="${theme_base!}/source/plugins/jquery-3.5.1/jquery-3.5.1.min.js"></script>
  <script type="text/javascript" src="${theme_base!}/source/plugins/materialize/js/materialize.min.js"></script>
  <script>
  // Or with jQuery

  $('.carousel.carousel-slider').carousel({
    fullWidth: true,
    indicators: true,
    noWrap: true,
  });
      
  </script>