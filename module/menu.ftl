<@menuTag method="list">
    <#--
        ?sort_by('priority')：根据菜单的排序编号排序
    -->
    <div id="fd-top-nav" class="fd-top-nav">
        <nav>
            <div class="nav-wrapper">
                <a href="#" class="brand-logo left"><i class="fa fa-tree"></i><span class="fd-logo-title">${blog_title!}</span></a>
                <ul  class="right">
                    <#list menus?sort_by('priority') as menu>
                        <li>
                            <a href="${menu.url}" target="${menu.target!}"><i class="fa ${menu.icon}"></i>&nbsp;${menu.name} </a>
                        </li>
                    </#list>
                </ul>
            </div>
        </nav>
    </div>
</@menuTag>
<script type="text/javascript" src="${theme_base!}/source/plugins/jquery-3.5.1/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function () {
    $(window).on('scroll', function () {
        var t = $(window).scrollTop();
        if (t > 10) {
            $("#fd-top-nav").addClass("navbar-fixed");
            $("nav").addClass("fd-nav-bg");
            $("nav ul a").addClass("fd-head-color")
            $("nav .brand-logo .fd-logo-title").css({'color': '#001858'});
            $("nav .brand-logo i").css({'color': '#001858'});
            
        } else {
            $("#fd-top-nav").removeClass("navbar-fixed");
            $("nav").removeClass("fd-nav-bg");
            $("nav ul a").removeClass("fd-head-color")
             $("nav .brand-logo .fd-logo-title").css({'color': '#fff'});
            $("nav .brand-logo i").css({'color': '#fff'});
        }
    })
});
</script>