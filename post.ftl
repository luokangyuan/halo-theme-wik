
<#include "module/macro.ftl">
<@layout title="${post.title!} - ${blog_title!}">
<#include "module/carousel.ftl">
    <div class="container fd-post-container">
       
        <div class="fd-post-detail-card">
             <article>
                 <div class="fd-post-detail-tags-cate">
                    <div class="fd-post-detail-tags">
                        <#if post.tags?size gt 0>
                            <#list post.tags as tag>
                                <div class="fd-left-right-tag">
                                     <span class="fd-tag-left"><i class="fa fa-tint"></i></span>
                                     <span class="fd-tag-right">${tag.name}</span>
                                </div>
                            </#list>
                        </#if>
                    </div>
                    <div class="fd-post-detail-categories">
                        <#if post.categories?size gt 0>
                            <#list post.categories as categories>
                                <div class="fd-left-right-tag">
                                     <span class="fd-tag-left"><i class="fa fa-bookmark"></i></span>
                                     <span class="fd-tag-right">${categories.name}</span>
                                </div>
                               
                            </#list>
                        </#if>
                    </div>
                </div>
                 ${post.formatContent!}
             </article>  
             <div class="fd-toc">目录</div>
        </div>
        
    </div>
   
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</@layout>
