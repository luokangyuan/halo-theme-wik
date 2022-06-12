 <link rel="stylesheet" href="${theme_base!}/source/plugins/jazztimeline/jazz-timeline.css">
<#include "module/macro.ftl">
<@layout title="归档 - ${blog_title!}">
<#include "module/carousel.ftl">
<div class="container">
    <div class="row fd-category-row">
         <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img  src="${theme_base!}/source/images/icon4.png">
                <h2>&nbsp;学而时习之</h2>
            </div>
        </div>

         <div class="col s12 m12 mt-10 fd-title" >
            <div class="jazz-timeline-wrapper" id="skrollr-body">
                <div class="jazz-timeline" >
                    <#list archives as archive>
                        <#--  <h2>${archive.year?c}</h2>  -->
                        <#list archive.posts as post>
                            <div class="timeline-post" >
                                
                                <div class="timeline-meta for-large-icons">
                                    <div class="meta-details" data-aos="fade-up" data-aos-duration="3000">${post.title!}</div>
                                </div> 
                                <div class="iconbg-${(post_index+1)%5} timeline-icon icon-larger  icon-color-white " data-aos="fade-up" data-aos-duration="3000">
                                    <div class="icon-placeholder">${post.createTime?string('yyyy-MM')!} <span>${post.createTime?string('dd')!}</span></div>
                                    <div class="timeline-bar"></div>
                                </div>
                                <div class="timeline-content"
                                    data-aos="fade-up" data-aos-duration="3000">
                                    <div class="fd-archives-card fd-catgories-card fd-index-top-item-card ">
                                        <div class="fd-index-img">
                                            <img src="${post.thumbnail !}">
                                        </div>
                                        <h2>${post.title}</h2>
                                        <p>${post.summary}</p>
                                        <a class="fd-top-botton fd-head-color" target="_blank" fd-head-color fd-re-botton"  href="${post.fullPath}">查看更多</a>
                                    </div>
                                </div><!-- timeline content -->
                            </div><!-- .timeline-post --> 
                        </#list>
                    </#list>
                </div>
            </div>
        </div>
    </div>
</div>

</@layout>

<script type="text/javascript" src="${theme_base!}/source/plugins/jazztimeline/skrollr.min.js"></script>
<script type="text/javascript">
    var s = skrollr.init({ forceHeight: false });
</script>   
