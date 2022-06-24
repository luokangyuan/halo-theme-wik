 <link rel="stylesheet" href="${theme_base!}/source/css/about.css">

<#include "module/macro.ftl">
<@layout title="关于我 - ${blog_title!}">
<#include "module/carousel.ftl">
<div class="container">
    <div class="row fd-category-row">
         <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top fd-about-img">
                <div class="fd-about-left">
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-fire"></i>&nbsp;文章</span>
                        <span class="fd-bradge-right fd-post-num-color">15篇</span>
                    </div>
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-bookmark"></i>&nbsp;专栏</span>
                        <span class="fd-bradge-right fd-category-num-color">5个</span>
                    </div>
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-tags"></i>&nbsp;标签</span>
                        <span class="fd-bradge-right fd-tag-num-color">56个</span>
                    </div>
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-image"></i>&nbsp;相册</span>
                        <span class="fd-bradge-right fd-photo-num-color">15篇</span>
                    </div>
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-eye"></i>&nbsp;浏览</span>
                        <span class="fd-bradge-right fd-view-num-color">3.4K</span>
                    </div>
                </div>

                <div class="fd-img-border wik-center">
                    <img  src="${theme_base!}/source/images/about.png">
                </div>

                <div class="fd-about-right">
                     <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-eye"></i>&nbsp;工作</span>
                        <span class="fd-bradge-right fd-view-num-color">5年</span>
                    </div>
                     <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-image"></i>&nbsp;爱好</span>
                        <span class="fd-bradge-right fd-photo-num-color">书影音</span>
                    </div>
                     <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-tags"></i>&nbsp;标签</span>
                        <span class="fd-bradge-right fd-tag-num-color">宅男</span>
                    </div>
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-bookmark"></i>&nbsp;愿望</span>
                        <span class="fd-bradge-right fd-category-num-color">活着</span>
                    </div>
                    <div class="fd-about-bradge">
                        <span class="fd-bradge-left"><i class="fa fa-fire"></i>&nbsp;未来</span>
                        <span class="fd-bradge-right fd-post-num-color"> &nbsp;&nbsp;&nbsp;</span>
                    </div>
                </div>
            </div>
            <div class="fd-name-info">
                <h2>Hi there, I'm Waldeinsamkeit !</h2>
                <p class="fd-about-p">菜鸟软件工程师</p>
                <p class="fd-about-desc fd-about-p ">${settings.about_title!}</p>
            </div>
        </div>

        <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img data-aos="zoom-out-right" data-aos-easing="linear" data-aos-duration="1500" src="${theme_base!}/source/images/icon2.png">
                <h2 data-aos="zoom-out-left" data-aos-easing="linear" data-aos-duration="1500">&nbsp;我的技能</h2>
            </div>
        </div>
        <div class="col s6 m6 fd-margin-bottom">
            <div data-aos="fade-right" data-aos-duration="1000" class="fd-charts-box fd-chart-skill" id="fd-chart-skill" style="height:340px;">
            </div>
        </div>
        <div class="col s6 m6 fd-margin-bottom">
            <div data-aos="fade-left" data-aos-duration="1000" class="fd-charts-box fd-chart-read" id="fd-chart-read" style="height:340px;">
            </div>
        </div>
        <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img data-aos="zoom-out-right" data-aos-easing="linear" data-aos-duration="1500" src="${theme_base!}/source/images/icon2.png">
                <h2 data-aos="zoom-out-left" data-aos-easing="linear" data-aos-duration="1500">&nbsp;我的开源项目</h2>
            </div>
        </div>

        <div class="col s6 m6" data-aos="fade-right" data-aos-offset="100" data-aos-easing="ease-in-sine" data-aos-duration="1000">
            <a href="https://github.com/luokangyuan/ghost-theme-mj" target="_blank">
            <div class="fd-top-card-height fd-catgories-card fd-index-top-item-card">
                <div class="fd-index-img">
                    <img src="${theme_base!}/source/images/link05.jpg">
                </div>
                <h2>ghost-theme-mj</h2>
                <p>这是一个漂亮的Ghost博客主题</p>
            </div>
            </a>
        </div>
         <div class="col s6 m6" data-aos="fade-left" data-aos-offset="100" data-aos-easing="ease-in-sine" data-aos-duration="1000">
            <a href="https://github.com/luokangyuan/typora-theme-chineseStyle" target="_blank">
            <div class="fd-catgories-card fd-index-top-item-card">
                <div class="fd-index-img">
                    <img src="${theme_base!}/source/images/link01.jpg">
                </div>
                <h2>typora-theme-chineseStyle</h2>
                <p>这是一款性冷淡风兼着中国风的typora主题</p>
            </div>
            </a>
        </div>
         <div class="col s6 m6" data-aos="fade-left" data-aos-offset="100" data-aos-easing="ease-in-sine" data-aos-duration="1000">
         <a href="https://github.com/luokangyuan/halo-theme-wik" target="_blank">
            <div class="fd-catgories-card fd-index-top-item-card">
                <div class="fd-index-img">
                    <img src="${theme_base!}/source/images/link02.jpg">
                </div>
                <h2>halo-theme-wik</h2>
                <p>这是一个漂亮的halo博客主题</p>
            </div>
            </a>
        </div>
        <div class="col s12 m12 mt-10 fd-title">
            <div class="fd-image-box fd-index-top">
                <img data-aos="zoom-out-right" data-aos-easing="linear" data-aos-duration="1500" src="${theme_base!}/source/images/icon2.png">
                <h2 data-aos="zoom-out-left" data-aos-easing="linear" data-aos-duration="1500">&nbsp;年度文章总结</h2>
            </div>
        </div>
         <div class="col s12 m12 fd-margin-bottom">
            <div data-aos="zoom-in" data-aos-duration="1000" class="fd-charts-box fd-chart-year" id="fd-chart-year" style="height:340px;">
            </div>
        </div>

         
    </div>
</div>
</@layout>
<script type="text/javascript" src="${theme_base!}/source/js/about.js"></script>

