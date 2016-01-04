package cn.edu.cup.fluid.gas.tools

import cn.edu.cup.system.SystemProcedure

class FluidGasToolsController {
    
    def commonService
    def excelService

    /*
     * 
     * */
    def importGascomponentNames() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "importGascomponentNames ${procedure}"
        
        def data = excelService.importExcelFile(params)
        model:[data: data, procedure: procedure]
    }
    
    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportGasComponentNames() {
        println "${params.controller}"
        println "${params.action}"
        def procedure = SystemProcedure.findByControllerNameAndActionName(params.controller, params.action)
        
        chain(controller: "file", 
            action: "uploadExcelFile", 
            model:[procedure: procedure]
        )
    }
    
    def index() { }
}
