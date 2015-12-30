class BootStrap {

    /*
     * 初始化....
     * */
    def init = { servletContext ->
        environments {
            development {
        
            }
            production {
            }
        }
    }
    
    /*
     * 撤销、退出
     * */
    def destroy = {
    }
}
