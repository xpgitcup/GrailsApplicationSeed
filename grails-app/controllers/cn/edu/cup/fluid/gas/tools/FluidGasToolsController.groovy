package cn.edu.cup.fluid.gas.tools

import cn.edu.cup.system.SystemProcedure
import grails.transaction.Transactional

class FluidGasToolsController {
    
    def commonService
    def excelService

    /*
     * 创建组分对象，存盘
     * */
    @Transactional
    def createComponentAndSave(params) {
        def result
        def d = params.list('names[]')  //这是获取数据的关键。
        println "d=${d}"
        if (d) {
            result = checkComponentByDescription(d)
        } else {
            result = null
        }
        if (request.xhr) {
            render(template: "createComponentResult", model:[result: result])
        } else {
            render(template: "createComponentError", model:[result: result])
        }
    }
    
    /*
     * 将上传的文件先试一下，然后分两个步骤：导入一行、
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
