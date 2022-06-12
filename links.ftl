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
                    <div class="col s4 m4">
                        <div class="fd-link-card fd-catgories-card fd-index-top-item-card ">
                            <div class="fd-index-img">
                                <img src="${theme_base!}/source/images/link0${(link_index+1)%5}.jpg">
                            </div>
                            <h2>${link.name}</h2>
                            <p>${link.description}</p>
                            <a class="fd-top-botton fd-head-color" target="_blank" fd-head-color fd-re-botton"  href="${link.url!}">查看更多</a>
                        </div>
                    </div>
                </#list>
            </#if>
        </@linkTag>
    </div>
</div>
</@layout>
