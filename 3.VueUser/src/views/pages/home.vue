<template>
	<div>
		<div class="home_box">
			<!-- 学习资源首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">学习资源展示</div>
				<div class="home_list_two">
					<mySwiper :data="xuexiziyuanHomeList" :type="3"
						:loop="true"
						:navigation="false"
						:pagination="false"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="2"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="true"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="1">
						<template #default="scope">
							<div class="home_item animation_box" @click="detailClick('xuexiziyuan',scope.row.id)">
								<div class="home_img_box">
									<img class="home_img" v-if="isHttp(scope.row.fengmian)" :src="scope.row.fengmian.split(',')[0]" alt="">
									<img class="home_img" v-else :src="scope.row.fengmian?$config.url + scope.row.fengmian.split(',')[0]:''" alt="">
								</div>
								<div class="home_content">
									<div class='home_title'>
										{{scope.row.ziyuanmingcheng}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="homeList_more_view" @click="moreClick('xuexiziyuan')">
					<span class="homeList_more_text">了解更多</span>
				</div>
			</div>
			<!-- 课程信息首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">课程信息展示</div>
				<div class="home_list_two">
					<mySwiper :data="kechengxinxiHomeList" :type="3"
						:loop="true"
						:navigation="false"
						:pagination="false"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="2"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="true"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="1">
						<template #default="scope">
							<div class="home_item animation_box" @click="detailClick('kechengxinxi',scope.row.id)">
								<div class="home_img_box">
									<img class="home_img" v-if="isHttp(scope.row.kechengfengmian)" :src="scope.row.kechengfengmian.split(',')[0]" alt="">
									<img class="home_img" v-else :src="scope.row.kechengfengmian?$config.url + scope.row.kechengfengmian.split(',')[0]:''" alt="">
								</div>
								<div class="home_content">
									<div class='home_title'>
										{{scope.row.kechengmingcheng}}
									</div>
									<div class='home_title'>
										发布时间：{{scope.row.fabushijian}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="homeList_more_view" @click="moreClick('kechengxinxi')">
					<span class="homeList_more_text">了解更多</span>
				</div>
			</div>
			<!-- 主观题首页展示 -->
			<div class="homeList_view">
				<div class="homeList_title">主观题展示</div>
				<div class="home_list_two">
					<mySwiper :data="zhuguantiHomeList" :type="3"
						:loop="true"
						:navigation="false"
						:pagination="false"
						:paginationType="2"
						:scrollbar="false"
						:slidesPerView="2"
						:spaceBetween="20"
						:autoHeight="false"
						:centeredSlides="false"
						:freeMode="true"
						:effectType="0"
						:direction="horizontal"
						:autoplay="true"
						:slidesPerColumn="1">
						<template #default="scope">
							<div class="home_item animation_box" @click="detailClick('zhuguanti',scope.row.id)">
								<div class="home_img_box">
									<img class="home_img" v-if="isHttp(scope.row.fengmian)" :src="scope.row.fengmian.split(',')[0]" alt="">
									<img class="home_img" v-else :src="scope.row.fengmian?$config.url + scope.row.fengmian.split(',')[0]:''" alt="">
								</div>
								<div class="home_content">
									<div class='home_title'>
										{{scope.row.shijuanmingcheng}}
									</div>
									<div class='home_title'>
										发布时间：{{scope.row.fabushijian}}
									</div>
								</div>
							</div>
						</template>
					</mySwiper>
				</div>
				<div class="homeList_more_view" @click="moreClick('zhuguanti')">
					<span class="homeList_more_text">了解更多</span>
				</div>
			</div>
		</div>
	</div>
</template>

<script setup>
	import {
		ref,
		getCurrentInstance
	} from 'vue';
	import {
		useRouter
	} from 'vue-router';
	const context = getCurrentInstance()?.appContext.config.globalProperties;
	const router = useRouter()
	//学习资源首页展示
	const xuexiziyuanHomeList = ref([])
	const getxuexiziyuanHomeList = () => {
		context?.$http({
			url: 'xuexiziyuan/list',
			method: 'get',
			params: {
				page: 1,
				limit: 8
			}
		}).then(res => {
			xuexiziyuanHomeList.value = res.data.data.list
		})
	}
	//课程信息首页展示
	const kechengxinxiHomeList = ref([])
	const getkechengxinxiHomeList = () => {
		context?.$http({
			url: 'kechengxinxi/list',
			method: 'get',
			params: {
				page: 1,
				limit: 8
			}
		}).then(res => {
			kechengxinxiHomeList.value = res.data.data.list
		})
	}
	//主观题首页展示
	const zhuguantiHomeList = ref([])
	const getzhuguantiHomeList = () => {
		context?.$http({
			url: 'zhuguanti/list',
			method: 'get',
			params: {
				page: 1,
				limit: 8
			}
		}).then(res => {
			zhuguantiHomeList.value = res.data.data.list
		})
	}
	//判断图片链接是否带http
	const isHttp = (str) => {
        return str && str.substr(0,4)=='http';
    }
	//跳转详情
	const detailClick = (table,id) => {
		router.push(`/index/${table}Detail?id=${id}`)
	}
	const moreClick = (table) => {
		router.push(`/index/${table}List`)
	}
	const init = () => {
		//学习资源首页展示
		getxuexiziyuanHomeList()
		//课程信息首页展示
		getkechengxinxiHomeList()
		//主观题首页展示
		getzhuguantiHomeList()
	}
	init()
</script>

<style lang="scss">
	.home_box {
		border-radius: 20px;
		padding: 16px;
		margin: 0 auto;
		background: #fff;
		display: flex;
		width: 64%;
		justify-content: space-between;
		align-items: flex-start;
		flex-wrap: wrap;
	}
	
	// 推荐
	.recomList_view {
		padding: 10px 20px;
		margin: 0px 0 0;
		background: #f4f4f4;
		width: 32%;
		min-height: 360px;
		order: 0;
		.recomList_title {
			margin: 0;
			color: #333;
			font-weight: 600;
			width: 100%;
			font-size: 18px;
			text-align: left;
		}
		// list
		.recommend_list_two {
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.recommend_item {
				cursor: pointer;
				margin: 0;
				background: none;
				width: 100%;
				.recommend_img_box {
					margin: 0 0 6px;
					width: 100%;
					height: 200px;
					.recommend_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.recommend_content {
					.recommend_title {
						overflow: hidden;
						color: #333;
						white-space: nowrap;
						background: #f4f4f4;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 24px;
						text-overflow: ellipsis;
						text-align: left;
					}
					.recommend_price {
						color: #c00;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 1;
						text-align: right;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.recommend_more_view {
			cursor: pointer;
			border: 1px solid #ddd;
			border-radius: 0px;
			padding: 0;
			margin: 10px 0 0;
			color: #fff;
			background: url(http://clfile.zggen.cn/20231017/48f2a7d273ec4706a1bd615b01f79133.jpg) no-repeat center top / 100% 100%;
			width: 89px;
			line-height: 34px;
			text-align: center;
			.recommend_more_text {
			}
		}
	}
	// 推荐
	// 新闻资讯
	.newsList_view {
		padding: 0px 0px;
		margin: 20px 0 0;
		background: none;
		flex: 1;
		width: 32%;
		position: relative;
		order: 8;
		height: 300px;

		.newsList_title {
			padding: 0 0 8px;
			margin: 0 auto 20px;
			color: #666;
			background: none;
			font-weight: 500;
			width: 100%;
			font-size: 22px;
			border-color: #999;
			border-width: 0 0 1px;
			border-style: dashed;
			text-align: left;
		}
		// list
		.news_list_one {
			padding: 0;
			margin: 20px 0 0;
			display: flex;
			width: 100%;
			justify-content: space-between;
			flex-wrap: wrap;
			.news_item {
				cursor: pointer;
				margin: 0 0 20px 0;
				background: #fff;
				display: flex;
				width: calc(32% - 0px);
				align-items: center;
				.news_img_box {
					width: 100px;
					height: 100px;
					.news_img {
						border: 6px solid #ebe9dd;
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.news_content {
					margin: 0 0 0 20px;
					display: flex;
					width: calc(100% - 80px);
					flex-wrap: wrap;
					.news_title {
						margin: 0 0 10px;
						overflow: hidden;
						white-space: nowrap;
						font-weight: bold;
						display: none;
						width: 100%;
						font-size: 14px;
						text-overflow: ellipsis;
						text-align: center;
						order: 2;
					}
					.news_text {
						padding: 0 10px 0 0;
						overflow: hidden;
						font-size: 14px;
						line-height: 24px;
						height: 48px;
						order: 3;
					}
					.news_time {
						color: #333;
						font-weight: 600;
						display: block;
						width: 100%;
						text-align: left;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.news_more_view {
			cursor: pointer;
			border: 1px solid #ddd;
			padding: 0px 0;
			margin: 0;
			color: #999;
			line-height: 34px;
			right: 20px;
			border-radius: 0px;
			top: -6px;
			background: url(http://clfile.zggen.cn/20231017/48f2a7d273ec4706a1bd615b01f79133.jpg) no-repeat center top / 100% 100%;
			width: 89px;
			position: absolute;
			text-align: center;
			.news_more_text {
				color: #fff;
			}
		}
	}
	// 新闻资讯
	// 首页展示
	.homeList_view {
		padding: 10px 20px;
		margin: 0px 0 0;
		background: #f4f4f4;
		width: 66%;
		min-height: 360px;
		order: 2;

		.homeList_title {
			margin: 0;
			color: #333;
			background: none;
			font-weight: 600;
			width: 100%;
			font-size: 18px;
			text-align: left;
		}
		// list
		.home_list_two {
			padding: 0;
			margin: 20px auto;
			display: flex;
			width: 100%;
			flex-wrap: wrap;
			.home_item {
				margin: 0;
				background: none;
				width: 100%;
				.home_img_box {
					cursor: pointer;
					margin: 0 0 6px;
					width: 100%;
					height: 200px;
					.home_img {
						object-fit: cover;
						width: 100%;
						height: 100%;
					}
				}
				.home_content {
					.home_title {
						overflow: hidden;
						color: #333;
						white-space: nowrap;
						background: #f4f4f4;
						font-weight: 500;
						width: 100%;
						font-size: 14px;
						line-height: 24px;
						text-overflow: ellipsis;
						text-align: left;
					}
				}
			}
		}
		// list
		// animation
		.animation_box {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		.animation_box img {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			z-index: initial;
		}
		.animation_box img:hover {
			transform: rotate(0deg) scale(1) skew(0deg, 0deg) translate3d(0px, 0px, 0px);
			-webkit-perspective: 1000px;
			perspective: 1000px;
			transition: 0.3s;
		}
		// animation
		// 更多
		.homeList_more_view {
			cursor: pointer;
			border: 0px solid #ddd;
			border-radius: 0px;
			padding: 0;
			margin: 0;
			color: #999;
			background: url(http://clfile.zggen.cn/20231017/48f2a7d273ec4706a1bd615b01f79133.jpg) no-repeat center top / 100% 100%;
			width: 89px;
			line-height: 34px;
			text-align: center;
			.homeList_more_text {
				color: #fff;
			}
		}
	}
	// 首页展示
</style>