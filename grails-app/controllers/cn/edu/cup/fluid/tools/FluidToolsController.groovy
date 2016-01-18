package cn.edu.cup.fluid.tools

import cn.edu.cup.system.SystemProcedure
import grails.transaction.Transactional

class FluidToolsController {

    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportGasFactors() {
        println "${params.controller}"
        println "${params.action}"
        def procedure = SystemProcedure.findByControllerNameAndActionName(params.controller, params.action)
        
        def tn = "尚未实现"
        //checkTemplate(tn)
        
        chain(controller: "file", 
            action: "uploadExcelFile", 
            model:[procedure: procedure, template: tn]
        )
    }

    def index() { }
}
