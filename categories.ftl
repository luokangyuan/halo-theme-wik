<#include "module/macro.ftl">
<@layout title="分类列表 - ${blog_title!}">
<#include "module/carousel.ftl">
<div class="container">
    <div class="row fd-category-row">
         <div class="col s3 m3">
            <div class="fd-catgories-card" >
               <div class="fd-catgories-img">
               </div>

            </div>
         </div>
         <div class="col s3 m3">
            <div class="fd-catgories-card" >
               <div class="fd-catgories-img">
               </div>

            </div>
         </div>
         <div class="col s3 m3">
            <div class="fd-catgories-card" >
               <div class="fd-catgories-img">
               </div>

            </div>
         </div>
         <div class="col s3 m3">
            <div class="fd-catgories-card" >
               <div class="fd-catgories-img">
               </div>

            </div>
         </div>
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
