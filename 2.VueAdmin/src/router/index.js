	import {
		createRouter,
		createWebHashHistory
	} from 'vue-router'
	import ziyuanleixing from '@/views/ziyuanleixing/list'
	import examquestion from '@/views/exam/examquestion/list'
	import zhuguanti from '@/views/zhuguanti/list'
	import ziyuanxiazai from '@/views/ziyuanxiazai/list'
	import syslog from '@/views/syslog/list'
	import jiaoshi from '@/views/jiaoshi/list'
	import zuoyetijiao from '@/views/zuoyetijiao/list'
	import exampaper from '@/views/exampaper/list'
	import storeup from '@/views/storeup/list'
	import discusskechengxinxi from '@/views/discusskechengxinxi/list'
	import kechengxinxi from '@/views/kechengxinxi/list'
	import discussxuexiziyuan from '@/views/discussxuexiziyuan/list'
	import forum from '@/views/forum/list'
	import chengjixinxi from '@/views/chengjixinxi/list'
	import kechengfenlei from '@/views/kechengfenlei/list'
	import yonghu from '@/views/yonghu/list'
	import tijiaodaan from '@/views/tijiaodaan/list'
	import pigaixinxi from '@/views/pigaixinxi/list'
	import config from '@/views/config/list'
	import kechengxuexi from '@/views/kechengxuexi/list'
	import zuoyefafang from '@/views/zuoyefafang/list'
	import xuexiziyuan from '@/views/xuexiziyuan/list'
	import exampaperlist from '@/views/exam/exampaperlist/list'
	import examination from '@/views/exam/exampaperlist/examination'
	import examrecord from '@/views/exam/examrecord/list'
	import examfailrecord from '@/views/exam/examfailrecord/list'
	import jiaoshiCenter from '@/views/jiaoshi/center'

export const routes = [{
		path: '/login',
		name: 'login',
		component: () => import('../views/login.vue')
	},{
		path: '/',
		name: '首页',
		component: () => import('../views/index'),
		children: [{
			path: '/',
			name: '首页Home',
			component: () => import('../views/HomeView.vue'),
			meta: {
				affix: true
			}
		}, {
			path: '/updatepassword',
			name: '修改密码',
			component: () => import('../views/updatepassword.vue')
		}
		
		,{
			path: '/jiaoshiCenter',
			name: '教师个人中心',
			component: jiaoshiCenter
		}
		,{
			path: '/ziyuanleixing',
			name: '资源类型',
			component: ziyuanleixing
		}
		,{
			path: '/examquestion',
			name: '试题管理',
			component: examquestion
		}
		,{
			path: '/zhuguanti',
			name: '主观题',
			component: zhuguanti
		}
		,{
			path: '/ziyuanxiazai',
			name: '资源下载',
			component: ziyuanxiazai
		}
		,{
			path: '/syslog',
			name: '操作日志',
			component: syslog
		}
		,{
			path: '/jiaoshi',
			name: '教师',
			component: jiaoshi
		}
		,{
			path: '/zuoyetijiao',
			name: '作业提交',
			component: zuoyetijiao
		}
		,{
			path: '/exampaper',
			name: '试卷列表',
			component: exampaper
		}
		,{
			path: '/storeup',
			name: '我的收藏',
			component: storeup
		}
		,{
			path: '/discusskechengxinxi',
			name: '课程信息评论',
			component: discusskechengxinxi
		}
		,{
			path: '/kechengxinxi',
			name: '课程信息',
			component: kechengxinxi
		}
		,{
			path: '/discussxuexiziyuan',
			name: '学习资源评论',
			component: discussxuexiziyuan
		}
		,{
			path: '/forum',
			name: '我的发布',
			component: forum
		}
		,{
			path: '/chengjixinxi',
			name: '成绩信息',
			component: chengjixinxi
		}
		,{
			path: '/kechengfenlei',
			name: '课程分类',
			component: kechengfenlei
		}
		,{
			path: '/yonghu',
			name: '用户',
			component: yonghu
		}
		,{
			path: '/tijiaodaan',
			name: '提交答案',
			component: tijiaodaan
		}
		,{
			path: '/pigaixinxi',
			name: '批改信息',
			component: pigaixinxi
		}
		,{
			path: '/config',
			name: '轮播图',
			component: config
		}
		,{
			path: '/kechengxuexi',
			name: '课程学习',
			component: kechengxuexi
		}
		,{
			path: '/zuoyefafang',
			name: '作业发放',
			component: zuoyefafang
		}
		,{
			path: '/xuexiziyuan',
			name: '学习资源',
			component: xuexiziyuan
		}
		, {
			path: '/exampaperlist',
			name: '考试列表',
			component: exampaperlist
		}, {
			path: '/examrecord',
			name: '考试记录',
			component: examrecord
		}, {
			path: '/examfailrecord',
			name: '错题本',
			component: examfailrecord
		}
		]
	},
	{
		path: '/examination',
		name: '考试',
		component: examination
	},
]

const router = createRouter({
	history: createWebHashHistory(process.env.BASE_URL),
	routes
})

export default router
