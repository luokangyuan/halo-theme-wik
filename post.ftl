
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
                                     <span class="fd-tag-left"><i class="fa fa-tint"></i>&nbsp;标签</span>
                                     <span class="fd-tag-right">${tag.name}</span>
                                </div>
                            </#list>
                        </#if>
                    </div>
                    <div class="fd-post-detail-categories">
                        <#if post.categories?size gt 0>
                            <#list post.categories as categories>
                                <div class="fd-left-right-tag">
                                     <span class="fd-tag-left"><i class="fa fa-bookmark"></i>&nbsp;分类</span>
                                     <span class="fd-tag-right">${categories.name}</span>
                                </div>
                               
                            </#list>
                        </#if>
                    </div>
                </div>
                <div class="fd-post-info">
                    <span><i class="fa fa-eye"></i>&nbsp;浏览次数：${post.visits}</span>
                    <span><i class="fa fa-heart"></i>&nbsp;点赞次数：${post.likes}</span>
                    <span><i class="fa fa-envelope-square"></i>&nbsp;评论次数：${post.commentCount}</span>
                    <span><i class="fa fa-calendar-check-o"></i>&nbsp;发布日期：${post.createTime?string('yyyy-MM-dd')}</span>
                    <span><i class="fa fa-dot-circle-o"></i>&nbsp;文章字数：${(post.wordCount/1000)?string("#.#")}k</span>
                    <span><i class="fa fa-hourglass-1"></i>&nbsp;阅读时长：${(post.wordCount/350)?string("#.#")}分钟</span>
                </div>
                <div id="fd-content">
                    ${post.formatContent!}
                </div>
             </article>  
             
             <div class="fd-toc">
                <div class="fd-toc-title"><i class="fa fa-server"></i>目录</div>
                <div class="fd-toc-content"></div>
             </div>
        </div>
        
    </div>
   
    <#include "module/comment.ftl">
    <@comment post=post type="post" />
</@layout>
<script type="text/javascript" src="${theme_base!}/source/plugins/tocbot/tocbot.min.js"></script>
<script>
$(document).ready(function () {
      tocbot.init({
    // Where to render the table of contents.
    tocSelector: '.fd-toc-content',
    // Where to grab the headings to build the table of contents.
    contentSelector: '#fd-content',
    // Which headings to grab inside of the contentSelector element.
    headingSelector: 'h1, h2, h3',
    // For headings inside relative or absolute positioned containers within content.
    hasInnerContainers: true,
    });

});
  
</script>