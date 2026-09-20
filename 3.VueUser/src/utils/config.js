const config = {
    get() {
        return {
            url : process.env.VUE_APP_BASE_API_URL + process.env.VUE_APP_BASE_API + '/',
            name: process.env.VUE_APP_BASE_API,
			menuList:[
				{
					name: '学习课程管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'学习资源',
							url:'/index/xuexiziyuanList'
						},
					]
				},
				{
					name: '主观题管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'主观题',
							url:'/index/zhuguantiList'
						},
					]
				},
				{
					name: '论坛交流',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'论坛交流',
							url:'/index/forumList'
						},
					]
				},
				{
					name: '在线考试',
					icon: 'icon-common42',
					child:[
						{
							name:'试卷列表',
							url:'/index/exampaperList'
						},
					]
				},
				{
					name: '课程信息管理',
					icon: '${frontMenu.fontClass}',
					child:[
						{
							name:'课程信息',
							url:'/index/kechengxinxiList'
						},
					]
				},
			]
        }
    },
    getProjectName(){
        return {
            projectName: "线上一流课程教学辅助系统"
        } 
    }
}
export default config
