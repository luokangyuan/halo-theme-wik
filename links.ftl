<#include "module/macro.ftl">
<@layout title="友情链接 - ${blog_title!}">
<#include "module/carousel.ftl">
<div class="container">
    <div class="row fd-category-row">
         <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img  src="${theme_base!}/source/images/icon4.png">
                <h2>&nbsp;有朋自远方来</h2>
            </div>
        </div>
         <@linkTag method="list">
            <#if links?? && links?size gt 0>
                <#list links as link>
                     <div class="col s4 m4 fd-link-box">
                        <div class="fd-friend-card">
                            <div class="fd-wave-img">
                                <img src="${theme_base!}/source/images/linkbg.png">
                            </div>
                            <div class="fd-link-logo">
                                 <div class="fd-link-img">
                                    <img src="${link.logo}">
                                </div>
                            </div>
                            <div class="fd-link-info">
                                 <h2>${link.name}</h2>
                                 <#--  <p class="fd-work">软件工程师</p>  -->
                                 <p class="fd-descption">${link.description}</p>
                                  <div class="fd-link-social">
                                    <a><span><i class="iconfont icon-github1"></i></span></a>
                                     <a><span><i class="iconfont icon-jianshu"></i></span></a>
                                     <a><span><i class="iconfont icon-csdn"></i></span></a>
                                    <a> <span><i class="iconfont icon-juejin"></i></span></a>
                                 </div>
                                 <#--  <a href="${link.url}" target="_blank" rel="external"><span class="fd-link-botton">前往查看</a>  -->
                                 <#--   -->
                            </div>
                             <div class="fd-bottom-wave-img ">
                                <img src="${theme_base!}/source/images/wave1.png">
                            </div>
                            
                        </div>
                    </div>
                 </#list>
            </#if>
        </@linkTag>
    </div>
</div>
</@layout>
