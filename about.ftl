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
                    <div class="fd-about-contact">
                        <div ><a href="${settings.github!}" target="_blank"><i class="fa fa-github"></i></a></div>
                    </div>
                    <div class="fd-about-contact">
                        <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-xinlangweibo"></i></a></div>
                    </div>
                    <div class="fd-about-contact">
                        <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-weixin"></i></a></div>
                    </div>
                    <div class="fd-about-contact">
                        <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-QQ"></i></a></div>
                    </div>
                    <div class="fd-about-contact">
                         <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-twitter"></i></a></div>
                    </div>
                      <div class="fd-about-contact">
                         <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-shejiaotubiao-10"></i></a></div>
                    </div>
                      <div class="fd-about-contact">
                         <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-email-fill"></i></a></div>
                    </div>
                      <div class="fd-about-contact">
                        <div ><a href="www.baodi.com" target="_blank"><i class="iconfont icon-WEBSITE"></i></a></div>
                    </div>
                      <div class="fd-about-contact">
                         <div ><a href="${settings.github!}" target="_blank"><i class="iconfont icon-24gf-phoneLoudspeaker"></i></a></div>
                    </div>

                </div>
            </div>
            <div class="fd-name-info">
                <h2>Waldeinsamkeit</h2>
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
            <div class="fd-charts-box fd-chart-skill" id="fd-chart-skill" style="height:340px;">
               <h3><i class="fa fa-wrench"></i>&nbsp;专业技能</h3>
               <div class="fd-skill-list">
                    <div class="fd-skill-item">
                        <span class="fd-skill-title">Java</span>
                        <span style=" width: 70%;" class="fd-skill-porcess">70%</span>
                    </div>

                     <div class="fd-skill-item">
                        <span class="fd-skill-title">程序设计</span>
                        <span style=" width: 65%;" class="fd-skill-porcess">65%</span>
                    </div>

                    <div class="fd-skill-item">
                        <span class="fd-skill-title">数据库</span>
                        <span style=" width: 60%;" class="fd-skill-porcess">60%</span>
                    </div>

                     <div class="fd-skill-item">
                        <span class="fd-skill-title">JavaScript</span>
                        <span style=" width: 55%;" class="fd-skill-porcess">55%</span>
                    </div>

                    <div class="fd-skill-item">
                        <span class="fd-skill-title">CSS</span>
                        <span style=" width: 45%;" class="fd-skill-porcess">45%</span>
                    </div>
               </div>
            </div>
        </div>
         
    </div>
</div>
</@layout>

