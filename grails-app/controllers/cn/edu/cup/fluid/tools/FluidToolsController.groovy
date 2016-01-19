package cn.edu.cup.fluid.tools

import cn.edu.cup.system.SystemProcedure
import grails.transaction.Transactional

class FluidToolsController {
    
    def commonService
    def excelService

    /*
     * 将上传的文件先试一下，然后分两个步骤：导入一行、
     * */
    def importComponentFactors() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "importComponentFactors ${procedure}"
        
        def data = excelService.importExcelFile(params)
        model:[data: data, procedure: procedure]
    }
    
    
    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportComponentFactors() {
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
