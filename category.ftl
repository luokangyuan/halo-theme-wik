<#include "module/macro.ftl">
<@layout title="分类：${category.name} - ${blog_title!}">
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

    <h1>分类：${category.name}</h1>
    <ul>
        <#list posts.content as post>
            <li>
                <a href="${post.fullPath}">${post.title}</a>
            </li>
        </#list>
    </ul>

    <h1>分页</h1>

    <#if posts.totalPages gt 1>
        <ul>
            <@paginationTag method="categoryPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${category.slug!}">
                <#if pagination.hasPrev>
                    <li>
                        <a href="${pagination.prevPageFullPath!}">
                            上一页
                        </a>
                    </li>
                </#if>
                <#list pagination.rainbowPages as number>
                    <li>
                        <#if number.isCurrent>
                            <span class="current">第 ${number.page!} 页</span>
                        <#else>
                            <a href="${number.fullPath!}">第 ${number.page!} 页</a>
                        </#if>
                    </li>
                </#list>
                <#if pagination.hasNext>
                    <li>
                        <a href="${pagination.nextPageFullPath!}">
                            下一页
                        </a>
                    </li>
                </#if>
            </@paginationTag>
        </ul>
    <#else>
        <span>当前只有一页</span>
    </#if>
</@layout>
