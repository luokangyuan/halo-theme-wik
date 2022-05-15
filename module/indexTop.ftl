
<div class="container fd-index-top-card">
    <div class="row">
        <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img data-aos="zoom-out-right" data-aos-easing="linear" data-aos-duration="1500" src="${theme_base!}/source/images/top.png">
                <h2 data-aos="zoom-out-left" data-aos-easing="linear" data-aos-duration="1500">&nbsp;推荐文章</h2>
            </div>
        </div>
        <#list posts.content as post>
           <#if post.topped == true>
                <div class="col s4 m4">
                    <div class="fd-card fd-index-top-item-card" data-aos="zoom-in" data-aos-duration="3000">
                        <div class="fd-index-img">
                            <img src="${post.thumbnail}">
                        </div>
                        <h2>${post.title}</h2>
                        <p>${post.summary}</p>
                        <a class="fd-top-botton fd-head-color fd-re-botton"  href="${post.fullPath!}">查看更多</a>
                    </div>
                </div>
            </#if>
        </#list>
    </div>
</div>
