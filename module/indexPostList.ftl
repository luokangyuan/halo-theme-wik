
<div class="container">
    <div class="row">
        <#list posts.content as post>
                <div class="col s4 m4">
                     <a href="${post.fullPath!}">
                    <div class="fd-post-card" data-aos="zoom-in" data-aos-duration="3000">
                        <div class="fd-index-img">
                            <img src="${post.thumbnail}">
                        </div>
                        <h2>${post.title}</h2>
                        <p class="fd-p-color">${post.summary}</p>
                        <div class="fd-view-box">
                            <span class="fd-view fd-head-color">
                                <i class="fa fa-eye"></i>&nbsp;${post.visits?c}&nbsp;|
                                <i class="fa fa-commenting"></i>&nbsp;${post.commentCount?c}&nbsp;|
                                <i class="fa fa-thumbs-up"></i>&nbsp;${post.likes?c}
                            </span>
                             <span class="fd-time fd-head-color">
                                <i class="fa fa-hourglass"></i>&nbsp;${post.createTime?string('yyyy-MM-dd')}
                            </span>
                        </div>
                        <div class="fd-post-tags">
                            <#if post.tags?size gt 0>
                                <#list post.tags as tag>
                                    <span class="fd-blue-botton">${tag.name}</span>
                                </#list>
                            </#if>
                        </div>
                    </div>
                    </a>
                </div>
        </#list>
    </div>
</div>
