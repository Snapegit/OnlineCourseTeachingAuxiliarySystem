<template>
	<div class="home_view">
		<div class="projectTitle">欢迎使用 {{projectName}}</div>
		<div class="count_list">
			<el-collapse-transition v-if="btnAuth('kechengxuexi','首页总数')">
				<el-card v-show="countTypeList.closekechengxuexiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								课程学习
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenkechengxuexiCountType')" class="showIcons"
									:class="countTypeList.hiddenkechengxuexiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closekechengxuexiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenkechengxuexiCountType">
							<div class="count_title">课程学习总数</div>
							<div class="count_num">{{kechengxuexiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chengjixinxi','首页总数')">
				<el-card v-show="countTypeList.closechengjixinxiCountType" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								成绩信息
							</div>
							<div class="card_head_right">
								<el-icon @click="countTypeClick('hiddenchengjixinxiCountType')" class="showIcons"
									:class="countTypeList.hiddenchengjixinxiCountType?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="countTypeClick('closechengjixinxiCountType')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
							
						</div>
					</template>
					<el-collapse-transition>
						<div class="count_item" v-show="countTypeList.hiddenchengjixinxiCountType">
							<div class="count_title">成绩信息总数</div>
							<div class="count_num">{{chengjixinxiCount}}</div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
		<div class="card_list">
			<el-collapse-transition v-if="btnAuth('kechengxuexi','首页统计')">
				<el-card v-show="cardTypeList.closekechengxuexiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								课程学习
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenkechengxuexiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenkechengxuexiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closekechengxuexiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenkechengxuexiChartType1">
							<div id="kechengxuexixuexishizhangEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
			<el-collapse-transition v-if="btnAuth('chengjixinxi','首页统计')">
				<el-card v-show="cardTypeList.closechengjixinxiChartType1" class="card_view">
					<template #header>
						<div class="index_card_head">
							<div class="card_head_title">
								成绩信息
							</div>
							<div class="card_head_right">
								<el-icon @click="cardTypeClick('hiddenchengjixinxiChartType1')" class="showIcons"
									:class="cardTypeList.hiddenchengjixinxiChartType1?'showIcons1':''">
									<ArrowUpBold />
								</el-icon>
								<el-icon @click="cardTypeClick('closechengjixinxiChartType1')" class="closeIcons">
									<CloseBold />
								</el-icon>
							</div>
						</div>
					</template>
					<el-collapse-transition>
						<div class="card_item" v-show="cardTypeList.hiddenchengjixinxiChartType1">
							<div id="chengjixinxichengjiEchart1" style="width: 100%;height: 400px;"></div>
						</div>
					</el-collapse-transition>
				</el-card>
			</el-collapse-transition>
		</div>
	</div>
</template>

<script setup>
	import {
		inject,
		nextTick,
		ref,
		getCurrentInstance
	} from 'vue';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const projectName = context.$project.projectName
	const countTypeList = ref({
	})
	const getCountList=()=>{
		countTypeList.value.closekechengxuexiCountType = true
		countTypeList.value.hiddenkechengxuexiCountType = true
		if(btnAuth('kechengxuexi','首页总数')){
			getkechengxuexiCount()
		}
		countTypeList.value.closechengjixinxiCountType = true
		countTypeList.value.hiddenchengjixinxiCountType = true
		if(btnAuth('chengjixinxi','首页总数')){
			getchengjixinxiCount()
		}
	}
	const kechengxuexiCount = ref(0)
	const getkechengxuexiCount = () => {
		context?.$http({
			url:'kechengxuexi/count',
			method: 'get'
		}).then(res=>{
			kechengxuexiCount.value = res.data.data
		})
	}
	const chengjixinxiCount = ref(0)
	const getchengjixinxiCount = () => {
		context?.$http({
			url:'chengjixinxi/count',
			method: 'get'
		}).then(res=>{
			chengjixinxiCount.value = res.data.data
		})
	}
	const countTypeClick = (e) => {
		countTypeList.value[e] = !countTypeList.value[e]
	}
	const init=()=>{
		getCountList()
		getCardList()
	}
	//权限验证
	const btnAuth = (e,a)=>{
		return context?.$toolUtil.isAuth(e,a)
	}
	let echarts = inject("echarts")
	const cardTypeClick = (e) =>{
		cardTypeList.value[e] = !cardTypeList.value[e]
		setTimeout(()=>{
			getCardList()
		},1000)
	}
	const cardTypeList = ref({
		closekechengxuexiChartType1: true,
		hiddenkechengxuexiChartType1: true,
		closechengjixinxiChartType1: true,
		hiddenchengjixinxiChartType1: true,
	})
	const getCardList = () => {
		if(btnAuth('kechengxuexi','首页统计')){
			getkechengxuexiChart1()
		}
		if(btnAuth('chengjixinxi','首页统计')){
			getchengjixinxiChart1()
		}
	}
	const getkechengxuexiChart1 = () => {
		nextTick(()=>{
			var xuexishizhangEchart1 = echarts.init(document.getElementById("kechengxuexixuexishizhangEchart1"),'macarons');
			context?.$http({
				url: `kechengxuexi/value/yonghuzhanghao/xuexishizhang`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].yonghuzhanghao);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].yonghuzhanghao
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '学习时长统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				xuexishizhangEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				xuexishizhangEchart1.setOption(option);
				//根据窗口的大小变动图表
				xuexishizhangEchart1.resize();
			})
		})
	}
	const getchengjixinxiChart1 = () => {
		nextTick(()=>{
			var chengjiEchart1 = echarts.init(document.getElementById("chengjixinxichengjiEchart1"),'macarons');
			context?.$http({
				url: `chengjixinxi/value/kechengmingcheng/chengji`,
				method: "get",
			}).then(obj=>{
				let res = obj.data.data
				let xAxis = [];
				let yAxis = [];
				let pArray = []
				for(let i=0;i<res.length;i++){
				    xAxis.push(res[i].kechengmingcheng);
				    yAxis.push(parseFloat((res[i].total)));
				    pArray.push({
				        value: parseFloat((res[i].total)),
				        name: res[i].kechengmingcheng
				    })
				}
				var option = {};
                option = {
                    title: {
                        text: '成绩统计',
                        left: 'center'
                    },
                    tooltip: {
                      trigger: 'item',
                      formatter: '{b} : {c}'
                    },
                    xAxis: {
                        type: 'category',
                        data: xAxis,
                        axisLabel: {
                            rotate: 40
                        }
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [{
                        data: yAxis,
                        type: 'bar'
                    }]
                };
				chengjiEchart1.clear()
				// 使用刚指定的配置项和数据显示图表。
				chengjiEchart1.setOption(option);
				//根据窗口的大小变动图表
				chengjiEchart1.resize();
			})
		})
	}
	init()
</script>
<style lang="scss">
	.projectTitle{
		padding: 0 0 20px;
		font-weight: bold;
		display: flex;
		width: 100%;
		font-size: 30px;
		justify-content: center;
		align-items: center;
		height: 50%;
	}

	.showIcons {
		transition: transform 0.3s;
		margin-right: 10px;
	}

	.showIcons1 {
		transform: rotate(-180deg);
	}
	
	// 总数盒子
	.count_list{
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		justify-content: center;
		align-items: flex-start;
		flex-wrap: wrap;
		// 总数card
		.card_view {
			border: 1px solid #e4e7ed;
			box-shadow: 0px 0px 12px rgba(0,0,0,.12);
			padding: 0 0 50px;
			margin: 0 10px 10px;
			flex: 1;
			background: rgba(0,123,213,1);
			width: 100%;
			position: relative;
			box-sizing: border-box;
			height: auto;
			// card头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				padding: 10px;
				left: 0;
				bottom: 0;
				width: 100%;
				border-width: 1px 0 0;
				position: absolute;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #fff;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon {
							cursor: pointer;
							color: #fff;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				// body盒子
				.count_item{
					padding: 30px;
					display: flex;
					align-items: center;
					text-align: center;
					// 总数标题
					.count_title{
						padding: 0 10px 0 0;
						color: #fff;
						font-weight: bold;
						font-size: 20px;
						line-height: 3;
					}
					// 总数数字
					.count_num{
						color: #fff;
						font-weight: bold;
						font-size: 24px;
						line-height: 3;
					}
				}
			}
		}
	}
	// 首页盒子
	.home_view {
		padding: 30px 0;
		background: url(http://clfile.zggen.cn/20240203/b89de8d5b5894c14925e21e6f1cbfff7.png) no-repeat center top / 100% 100% !important;
		width: 100%;
		min-height: 100vh;
		height: auto;
	}
	// 统计图盒子
	.card_list {
		padding: 0 0 20px;
		display: flex;
		width: 100%;
		flex-wrap: wrap;
		// 统计图card
		.card_view {
			border: 0px solid #e4e7ed;
			box-shadow: none;
			margin: 0 10px 20px;
			background: #fff;
			width: 32%;
			box-sizing: border-box;
			height: auto;
			// 头部
			.el-card__header {
				border: 1px solid #e4e7ed;
				display: none;
				width: 100%;
				border-width: 0 0 1px;
				// 头部盒子
				.index_card_head {
					display: flex;
					width: 100%;
					justify-content: space-between;
					align-items: center;
					// 标题
					.card_head_title {
						color: #f00;
						font-size: 14px;
					}
					// 按钮盒子
					.card_head_right {
						display: flex;
						align-items: center;
						// 按钮
						.el-icon{
							cursor: pointer;
							color: #aaa;
							font-size: 20px;
						}
					}
				}
			}
			// body
			.el-card__body {
				padding: 0;
				width: 100%;
				// body盒子
				.card_item{
					padding: 30px;
					text-align: center;
				}
			}
		}
	}
</style>
