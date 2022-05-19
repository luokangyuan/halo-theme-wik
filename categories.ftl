<#include "module/macro.ftl">
<@layout title="分类列表 - ${blog_title!}">
<#include "module/carousel.ftl">
<div class="container">
    <div class="row fd-category-row">
        <@categoryTag method="list">
            <#list categories as category>
                <div class="col s3 m3">
                    <div class="fd-catgories-card fd-index-top-item-card" data-aos="zoom-in" data-aos-duration="3000">
                        <div class="fd-index-img">
                            <img src="${category.thumbnail}">
                        </div>
                        <h2>${category.name}</h2>
                        <p>文章数：${category.postCount}篇</p>
                        <a class="fd-top-botton fd-head-color fd-re-botton"  href="${category.fullPath!}">查看更多</a>
                    </div>
                </div>
            </#list>
        </@categoryTag>
    </div>
</div>


    <h1>分类列表</h1>
    <ul>
        <@categoryTag method="list">
            <#if categories?? && categories?size gt 0>
                <#list categories as category>
                    <li><a href="${category.fullPath!}">${category.name}</a></li>
                </#list>
            </#if>
        </@categoryTag>
    </ul>
</@layout>
