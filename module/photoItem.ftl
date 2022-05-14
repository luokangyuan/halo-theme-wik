<@photoTag method="list">
    <#list photos as photo>
        <div class="col s4 m4">
            <div class="fd-card" data-aos="zoom-in" data-aos-duration="3000">
                <div class="fd-image">
                    <img src="${photo.url}">
                </div>
                <h3>${photo.name}</h3>
                <div class="fd-card-bottom">
                    <h4 class="fd-head-color"><i class="fa fa-map-marker"></i>&nbsp;${photo.location}</h4>
                    <h4 class="fd-head-color fd-card-time"><i class="fa fa-calendar"></i>&nbsp;${photo.createTime?string('yyyy/MM')}</h4>
                </div>
            </div>
        </div>
    </#list>
</@photoTag>