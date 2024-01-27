const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm443x6/",
            name: "ssm443x6",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm443x6/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "电影院订票选座小程序"
        } 
    }
}
export default base
