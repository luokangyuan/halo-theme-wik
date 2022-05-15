    <div class="carousel carousel-slider center">
    <div class="carousel-fixed-item center">
      <a ><i class="fd-chevron bottom fa fa-chevron-down"></i></a>
    </div>
     <div class="carousel-item fd-carouse" href="#one!">
        <img src="${theme_base!}/source/images/photo4.jpg">
        <h2>${settings.index_title!}</h2>
        <p class="white-text">${settings.index_notice!}</p>
        <div class="fd-contact-box">
          <div ><a href="${settings.github!}" target="_blank"><i class="fa fa-github"></i></a></div>
          <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-xinlangweibo"></i></a></div>
          <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-weixin"></i></a></div>
          <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-QQ"></i></a></div>
          <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-twitter"></i></a></div>
          <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-shejiaotubiao-10"></i></a></div>
          <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-email-fill"></i></a></div>
          <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-WEBSITE"></i></a></div>
          <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-24gf-phoneLoudspeaker"></i></a></div>
          <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-YouTube"></i></a></div>
        </div>
      </div>
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

     <#--  <#if is_photos??>
       <@postTag method="latest" top="3">
        <#list posts as post>
          <#if post.topped == true>
            <div class="carousel-item fd-carouse" href="#one!">
              <img src="${post.thumbnail!}">
              <h2>${post.title!}</h2>
              <p class="white-text">${post.summary}</p>
              <a class="fd-botton" href="${post.fullPath!}">查看更多</a>
            </div>
            </#if>
        </#list>
      </@postTag>
     <#if>  -->
   
  </div>
  <script type="text/javascript" src="${theme_base!}/source/plugins/jquery-3.5.1/jquery-3.5.1.min.js"></script>
  <script type="text/javascript" src="${theme_base!}/source/plugins/materialize/js/materialize.min.js"></script>
  <script>
 var instance = M.Carousel.init({
    fullWidth: true,
    indicators: true,
    noWrap: true,
  });

  // Or with jQuery

  $('.carousel.carousel-slider').carousel({
    fullWidth: true,
    indicators: true,
    noWrap: true,
  });
      
  </script>