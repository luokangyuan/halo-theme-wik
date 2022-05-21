<div class="container">
    <div class="row fd-category-row">
         <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img  src="${theme_base!}/source/images/icon2.png">
                <h2>&nbsp;文章分类</h2>
            </div>
        </div>
        <@categoryTag method="list">
            <#list categories as category>
                <div class="col s3 m3">
                    <div class="fd-catgories-card fd-index-top-item-card">
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