
<#if posts.totalPages gt 1>
<ul class="pagination fd-pagination">
    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
        <#if pagination.hasPrev>
             <li class="disabled"><a href="${pagination.prevPageFullPath!}"><i class="material-icons">chevron_left</i></a></li>
        </#if>
        <#list pagination.rainbowPages as number>
           <#if number.isCurrent>
              <li class="active"><a href="${number.fullPath!}">${number.page!} </a></li>
            <#else>
                 <li class="waves-effect"><a href="${number.fullPath!}">${number.page!} </a></li>
            </#if>
        </#list>
        <#if pagination.hasNext>
            <li class="waves-effect"><a href="${pagination.nextPageFullPath!}"><i class="material-icons">chevron_right</i></a></li>
        </#if>
    </@paginationTag>
</ul>

</#if>
          