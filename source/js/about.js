$(document).ready(function () {
   var pieData = [ 
   { value: 40, name: '美学' },
   { value: 38, name: '摄影' },
   { value: 32, name: '手工' },
   { value: 30, name: 'PS' },
   { value: 28, name: '剪辑' },
   { value: 26, name: '绘画' },
   { value: 22, name: '功夫茶' },
   { value: 18, name: '游戏' }]
   var skillData=[
    ['score', 'amount', 'product'],
    [89.3, 58212, 'Matcha Latte'],
    [57.1, 78254, 'Milk Tea'],
    [74.4, 41032, 'Cheese Cocoa'],
    [50.1, 12755, 'Cheese Brownie'],
    [89.7, 20145, 'Matcha Cocoa'],
    [68.1, 79146, 'Tea'],
    [19.6, 91852, 'Orange Juice'],
    [10.6, 101852, 'Lemon Juice'],
    [32.7, 20112, 'Walnut Brownie']
  ]
    chartPie(pieData);
    skill(skillData);
    yearPost()
});

function skill(skillData) {
    var myChart = echarts.init(document.getElementById('fd-chart-skill'));
    var option = {
        title: {
            text: '专业技能',
            top: "top",
            left: "center"
        },
        legend: {
            top: 'bottom'
        },
        tooltip: {
          trigger: 'axis',
          axisPointer: {
            type: 'shadow'
          }
        },
        grid: {
          top: '10%',
          left: '10%',
          right: '10%',
          bottom: '10%',
          containLabel: true
        },
        xAxis: {
          show: true,
          axisLabel: {
            formatter: '{value} 位',
            show: false
          },
          splitLine: { show: false },
          axisLine: {
            show: false
          }
        },
        yAxis: {
          type: 'category',
          inverse: true, // 倒叙
          axisLabel: {
            color: '#34495e',
            formatter: (val) => {
              return `${val}`;
            }
          },
          axisLine: {
            show: false // 轴线
          },
          axisTick: {
            show: false // 刻度线
          },
          data: ['Java', '数据库', '程序设计', 'JavaScript', 'CSS']
        },
        series: [
          {
            name: '专业技能',
            type: 'bar',
            barWidth: 30,
            showBackground: false,
            barMaxWidth: 60,
            barMinWidth: 5,
            itemStyle: {
              borderRadius: [10, 10, 10, 10],
              color: function(params) {
                var colorList = [
                  '#B5C334','#FCCE10','#E87C25','#27727B',
                   '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                   '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                ];
                return colorList[params.dataIndex]},
              borderWidth: 0,
              borderColor: "black",
            
            },
            label: {
                position: 'insideRight',
                show: true,
                color: '#fff',
                formatter: function(params){
                    return params.value / 500 * 100 + '%';
                }
              },
            data: [400, 360, 300, 270, 260]
          }
        ]
      };
      myChart.setOption(option);
}

function chartPie(pieData) {
    var myChart = echarts.init(document.getElementById('fd-chart-read'));
    var option = {
        title: {
            text: '乱七八糟爱好技能',
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

function yearPost(yearPostData) {
    var myChart = echarts.init(document.getElementById('fd-chart-year'));
    var option = {
        title: {
              text: '年度文章数目',
              top: "top",
              left: "center",
              show: false
          },
          legend: {
            show:true,
              top: 'bottom'
          },
        xAxis: {
          type: 'category',
          data: ['2018年', '2019年', '2020年', '2021年', '2022年', '2023年', '2024年']
        },
        yAxis: {
          type: 'value',
          
        },
        series: [
          {
            name: '年度文章数目' ,
            itemStyle: {
              borderRadius: [10, 10, 0, 0],
              color:function(params) {
                  var colorList = [
                    '#B5C334','#FCCE10','#E87C25','#27727B',
                     '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',
                     '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'
                  ];
               return colorList[params.dataIndex]},
              borderWidth: 0,
              borderColor: "black",
              label: {
                show: true,
                position: 'top',
                
                }
            },
            data: [6, 8, 10, 8, 7, 0, 0],
            type: 'bar',
            barWidth: 30,
            showBackground: false,
            barMaxWidth: 60,
            barMinWidth: 5,
            label: {
                position: 'top',
                show: true
              },
          }
        ]
      };
    myChart.setOption(option);
}
