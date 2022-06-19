$(document).ready(function () {
    var pieData = [];
    var categoryName = [];
    var redaData = [];
    var redaIndicator = []

    var tagName = [];
    var word_array = [];

    Utils.request({
        url: "/api/content/categories",
        method: "GET"
    })
        .then((_res) => {
            if (_res) {
                Promise.all(
                    _res.map((item, index) => {
                        categoryName.push(item.name);
                        return Utils.request({
                            url: "/api/content/categories/" + item.slug + "/posts",
                            method: "GET"
                        })
                    })
                ).then((_res) => {
                    _res.forEach((item, index) => {
                        var pieDataItem = {}
                        pieDataItem.value = item.total;
                        pieDataItem.name = categoryName[index];
                        if (item.total > 0) {
                            pieData.push(pieDataItem);
                            var redaItem = {};
                            redaItem.name = categoryName[index];
                            redaItem.max = item.total + 4;
                            redaIndicator.push(redaItem);
                            redaData.push(item.total)
                        }
                    })
                    
                    chartPie(pieData)
                    chartRedar(redaIndicator, redaData)
                }).catch((err) => {
                    console.log(err)
                });

            }
        }).catch((err) => {
            console.log(err)
        });

        /** 词云图 */
        Utils.request({
            url: "/api/content/tags",
            method: "GET"
        })
            .then((_res) => {
                if (_res) {
                    Promise.all(
                        _res.map((item, index) => {
                            tagName.push(item.name);
                            return Utils.request({
                                url: "/api/content/tags/" + item.slug + "/posts",
                                method: "GET"
                            })
                        })
                    ).then((_res) => {
                        _res.forEach((tag, index) => {
                           var wordItem = {}
                           wordItem.text = tagName[index];
                           wordItem.weight = tag.total;
                           word_array.push(wordItem)
                        })
                        wordChat(word_array);
                    
                    }).catch((err) => {
                        console.log(err)
                    });
    
                }
            }).catch((err) => {
                console.log(err)
            });
    

       

       


    
});

function chartRedar(redaIndicator, data) {
    var radarChart = echarts.init(document.getElementById('fd-chart-radar'));
    var radarOption = {
        title: {
            text: '文章分类雷达图',
            top: "top",
            left: "center",
            
        },
        
        legend: {
            data: ['文章数目'],
            top: 'bottom',
            show: true
        },
        radar: {
            indicator: redaIndicator,
            radius: 100
        },
        series: [
            {
                name: 'Budget vs spending',
                type: 'radar',
                radius: 30,
                itemStyle: {
                    color: '#91CC75',
                    borderWidth: 0
                },
                areaStyle: {
                    color: '#91CC75',
                },
                data: [
                    {
                        value: data,
                        name: '文章数目'
                    }
                ],
               
                
            }
        ]
    };
    // 使用刚指定的配置项和数据显示图表。
    radarChart.setOption(radarOption);
}

function chartPie(pieData) {
    var myChart = echarts.init(document.getElementById('fd-chart-pie'));
    var option = {
        title: {
            text: '文章分类南丁格尔图',
            top: "top",
            left: "center"
        },
        legend: {
            top: 'bottom'
        },
        toolbox: {
            show: true,
            feature: {
                mark: { show: true },
                dataView: { show: false, readOnly: false },
                restore: { show: false },
                saveAsImage: { show: false }
            }
        },
        series: [
            {
                name: 'Nightingale Chart',
                type: 'pie',
                radius: [30, 110],
                center: ['50%', '50%'],
                roseType: 'area',
                labelLine: {
                    show: true
                },

                itemStyle: {
                    borderRadius: 8
                },
                data: pieData
            }
        ]
    };
    myChart.setOption(option);
}

function wordChat(word_array) {
    $(function() {
    $("#fd-chart-word").jQCloud(word_array);
    });
}
