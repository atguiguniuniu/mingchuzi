<template>
    <div class="echart" id="mychart" :style="{ width: '800px', height: '600px' }"></div>
</template>

<script>
import * as echarts from "echarts";
import { listTCount} from "@/api/providerinfo/providerinfo";
  
  export default {
    name: "zhu",
    data() {
        return {
            myChartStyle: { float: "left", width: "100%", height: "400px" } //图表样式
        };
    },
    mounted() {
        this.$nextTick(() => {
            this.list();
        });
    },
    created() {
    },
    methods: {
        list() {
            listTCount({}).then(res => {
                if (res.code == 200) {
                    this.zhuzhuangtu(res.data);
                } else {
                    //验证失败
                    this.zhuzhuangtu(null);
                }
            })

        },
        zhuzhuangtu(datm) {
            //参数拼接
            var datas = []
            var xData = []
            if (datm == null) {
                datas.push(0, 0);
                xData.push("城市1", "城市2");
            } else {
                for (let i = 0; i < datm.length; i++) {
                    var item = {
                        value: datm[i].count,
                    };
                    var items = {
                        value: datm[i].city,
                    };
                    datas.push(item);
                    xData.push(items);
                }
            }



            // 基本柱状图
            const option = {
                xAxis: {
                    data: xData
                },
                yAxis: {},
                series: [
                    {
                        type: "bar", //形状为柱状图
                        data: datas
                    }
                ]
            };
            const myChart = echarts.init(document.getElementById("mychart"));
            myChart.setOption(option);
            //随着屏幕大小调节图表
            window.addEventListener("resize", () => {
                myChart.resize();
            });
        }
    }
};
</script>