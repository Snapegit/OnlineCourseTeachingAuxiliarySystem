import { createRouter, createWebHashHistory } from 'vue-router'
import index from '../views'
import home from '../views/pages/home.vue'
import login from '../views/pages/login.vue'
import yonghuList from '@/views/pages/yonghu/list'
import yonghuDetail from '@/views/pages/yonghu/formModel'
import yonghuAdd from '@/views/pages/yonghu/formAdd'
import yonghuRegister from '@/views/pages/yonghu/register'
import yonghuCenter from '@/views/pages/yonghu/center'
import kechengfenleiList from '@/views/pages/kechengfenlei/list'
import kechengfenleiDetail from '@/views/pages/kechengfenlei/formModel'
import kechengfenleiAdd from '@/views/pages/kechengfenlei/formAdd'
import xuexiziyuanList from '@/views/pages/xuexiziyuan/list'
import xuexiziyuanDetail from '@/views/pages/xuexiziyuan/formModel'
import xuexiziyuanAdd from '@/views/pages/xuexiziyuan/formAdd'
import storeupList from '@/views/pages/storeup/list'
import forumList from '@/views/pages/forum/list'
import syslogList from '@/views/pages/syslog/list'
import syslogDetail from '@/views/pages/syslog/formModel'
import syslogAdd from '@/views/pages/syslog/formAdd'
import ziyuanleixingList from '@/views/pages/ziyuanleixing/list'
import ziyuanleixingDetail from '@/views/pages/ziyuanleixing/formModel'
import ziyuanleixingAdd from '@/views/pages/ziyuanleixing/formAdd'
import kechengxinxiList from '@/views/pages/kechengxinxi/list'
import kechengxinxiDetail from '@/views/pages/kechengxinxi/formModel'
import kechengxinxiAdd from '@/views/pages/kechengxinxi/formAdd'
import ziyuanxiazaiList from '@/views/pages/ziyuanxiazai/list'
import ziyuanxiazaiDetail from '@/views/pages/ziyuanxiazai/formModel'
import ziyuanxiazaiAdd from '@/views/pages/ziyuanxiazai/formAdd'
import zuoyetijiaoList from '@/views/pages/zuoyetijiao/list'
import zuoyetijiaoDetail from '@/views/pages/zuoyetijiao/formModel'
import zuoyetijiaoAdd from '@/views/pages/zuoyetijiao/formAdd'
import zuoyefafangList from '@/views/pages/zuoyefafang/list'
import zuoyefafangDetail from '@/views/pages/zuoyefafang/formModel'
import zuoyefafangAdd from '@/views/pages/zuoyefafang/formAdd'
import kechengxuexiList from '@/views/pages/kechengxuexi/list'
import kechengxuexiDetail from '@/views/pages/kechengxuexi/formModel'
import kechengxuexiAdd from '@/views/pages/kechengxuexi/formAdd'
import jiaoshiList from '@/views/pages/jiaoshi/list'
import jiaoshiDetail from '@/views/pages/jiaoshi/formModel'
import jiaoshiAdd from '@/views/pages/jiaoshi/formAdd'
import chengjixinxiList from '@/views/pages/chengjixinxi/list'
import chengjixinxiDetail from '@/views/pages/chengjixinxi/formModel'
import chengjixinxiAdd from '@/views/pages/chengjixinxi/formAdd'
import zhuguantiList from '@/views/pages/zhuguanti/list'
import zhuguantiDetail from '@/views/pages/zhuguanti/formModel'
import zhuguantiAdd from '@/views/pages/zhuguanti/formAdd'
import tijiaodaanList from '@/views/pages/tijiaodaan/list'
import tijiaodaanDetail from '@/views/pages/tijiaodaan/formModel'
import tijiaodaanAdd from '@/views/pages/tijiaodaan/formAdd'
import pigaixinxiList from '@/views/pages/pigaixinxi/list'
import pigaixinxiDetail from '@/views/pages/pigaixinxi/formModel'
import pigaixinxiAdd from '@/views/pages/pigaixinxi/formAdd'
import exampaperList from '@/views/pages/exam/exampaperList'
import examination from '@/views/pages/exam/examination'
import examrecordList from '@/views/pages/exam/examrecordList'
import examfailrecord from '@/views/pages/exam/examfailrecord'

const routes = [{
		path: '/',
		redirect: '/index/home'
	},
	{
		path: '/index',
		component: index,
		children: [{
			path: 'home',
			component: home
		}
		, {
			path: 'yonghuList',
			component: yonghuList
		}, {
			path: 'yonghuDetail',
			component: yonghuDetail
		}, {
			path: 'yonghuAdd',
			component: yonghuAdd
		}
		, {
			path: 'yonghuCenter',
			component: yonghuCenter
		}
		, {
			path: 'kechengfenleiList',
			component: kechengfenleiList
		}, {
			path: 'kechengfenleiDetail',
			component: kechengfenleiDetail
		}, {
			path: 'kechengfenleiAdd',
			component: kechengfenleiAdd
		}
		, {
			path: 'xuexiziyuanList',
			component: xuexiziyuanList
		}, {
			path: 'xuexiziyuanDetail',
			component: xuexiziyuanDetail
		}, {
			path: 'xuexiziyuanAdd',
			component: xuexiziyuanAdd
		}
		, {
			path: 'storeupList',
			component: storeupList
		}
		, {
			path: 'forumList',
			component: forumList
		}
		, {
			path: 'syslogList',
			component: syslogList
		}, {
			path: 'syslogDetail',
			component: syslogDetail
		}, {
			path: 'syslogAdd',
			component: syslogAdd
		}
		, {
			path: 'ziyuanleixingList',
			component: ziyuanleixingList
		}, {
			path: 'ziyuanleixingDetail',
			component: ziyuanleixingDetail
		}, {
			path: 'ziyuanleixingAdd',
			component: ziyuanleixingAdd
		}
		, {
			path: 'kechengxinxiList',
			component: kechengxinxiList
		}, {
			path: 'kechengxinxiDetail',
			component: kechengxinxiDetail
		}, {
			path: 'kechengxinxiAdd',
			component: kechengxinxiAdd
		}
		, {
			path: 'ziyuanxiazaiList',
			component: ziyuanxiazaiList
		}, {
			path: 'ziyuanxiazaiDetail',
			component: ziyuanxiazaiDetail
		}, {
			path: 'ziyuanxiazaiAdd',
			component: ziyuanxiazaiAdd
		}
		, {
			path: 'zuoyetijiaoList',
			component: zuoyetijiaoList
		}, {
			path: 'zuoyetijiaoDetail',
			component: zuoyetijiaoDetail
		}, {
			path: 'zuoyetijiaoAdd',
			component: zuoyetijiaoAdd
		}
		, {
			path: 'zuoyefafangList',
			component: zuoyefafangList
		}, {
			path: 'zuoyefafangDetail',
			component: zuoyefafangDetail
		}, {
			path: 'zuoyefafangAdd',
			component: zuoyefafangAdd
		}
		, {
			path: 'kechengxuexiList',
			component: kechengxuexiList
		}, {
			path: 'kechengxuexiDetail',
			component: kechengxuexiDetail
		}, {
			path: 'kechengxuexiAdd',
			component: kechengxuexiAdd
		}
		, {
			path: 'jiaoshiList',
			component: jiaoshiList
		}, {
			path: 'jiaoshiDetail',
			component: jiaoshiDetail
		}, {
			path: 'jiaoshiAdd',
			component: jiaoshiAdd
		}
		, {
			path: 'chengjixinxiList',
			component: chengjixinxiList
		}, {
			path: 'chengjixinxiDetail',
			component: chengjixinxiDetail
		}, {
			path: 'chengjixinxiAdd',
			component: chengjixinxiAdd
		}
		, {
			path: 'zhuguantiList',
			component: zhuguantiList
		}, {
			path: 'zhuguantiDetail',
			component: zhuguantiDetail
		}, {
			path: 'zhuguantiAdd',
			component: zhuguantiAdd
		}
		, {
			path: 'tijiaodaanList',
			component: tijiaodaanList
		}, {
			path: 'tijiaodaanDetail',
			component: tijiaodaanDetail
		}, {
			path: 'tijiaodaanAdd',
			component: tijiaodaanAdd
		}
		, {
			path: 'pigaixinxiList',
			component: pigaixinxiList
		}, {
			path: 'pigaixinxiDetail',
			component: pigaixinxiDetail
		}, {
			path: 'pigaixinxiAdd',
			component: pigaixinxiAdd
		}
		, {
			path: 'exampaperList',
			component: exampaperList
		}, {
			path: 'examrecordList',
			component: examrecordList
		}, {
			path: 'examfailrecord',
			component: examfailrecord
		}
		]
	},
	{
		path: '/login',
		component: login
	}
	,{
		path: '/yonghuRegister',
		component: yonghuRegister
	}
	, {
		path: '/examination',
		component: examination
	}
]

const router = createRouter({
  history: createWebHashHistory(process.env.BASE_URL),
  routes
})

export default router
