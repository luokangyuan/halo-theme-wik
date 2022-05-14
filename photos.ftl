<#include "module/macro.ftl">
<@layout title="旅行 - ${blog_title!}">
 <#include "module/carousel.ftl">
    <div class="container">
         <div class="row">
            <div class="col s12 m12 fd-title">
                <div class="fd-image-box fd-main-bg">
                    <img data-aos="zoom-out-right" data-aos-easing="linear" data-aos-duration="1500" src="${theme_base!}/source/images/travel.png">
                     <h2 data-aos="zoom-out-left" data-aos-easing="linear" data-aos-duration="1500">travel</h2>
                </div>
                <p data-aos="fade-up" data-aos-easing="linear" data-aos-duration="1500">${settings.travle_title!}</p>
            </div>
            <#include "module/photoItem.ftl">
          </div>
    </div>
   
</@layout>