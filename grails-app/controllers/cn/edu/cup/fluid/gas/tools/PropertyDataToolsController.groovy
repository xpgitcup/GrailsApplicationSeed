package cn.edu.cup.fluid.gas.tools

import cn.edu.cup.fluid.gas.GasComponentProperty
import cn.edu.cup.system.SystemProcedure
import grails.transaction.Transactional

class PropertyDataToolsController {

    def commonService
    def excelService
    
    /*
     * 下载
     * */
    def download(params) {
        commonService.download(params)
    }
    
    /*
     * 准备模板供用户下载___全部属性的
     * */
    def prepareImportTemplate() {
        def heads = []
        def row = ['组分']
        def ps = GasComponentProperty.list()
        ps.each {e->
            row.add(e.alias)
        }
        heads.add(row)
        def tn = "temp/propertyTemplate.xls"
        excelService.exportExcelFile(tn, heads)
        model:[template: tn]
    }
    
    /*
     * 创建组分对象，存盘
     * */
    @Transactional
    def createComponentPropertyDataAndSave(params) {
        def result = [:]
        def d = params.list('names[]')  //这是获取数据的关键。
        println "d=${d}"
        def n = d.size()
        if (n<2) {
            result.message = '信息不全，数据列数不足4列。'
        } else {
            println "开始检查。。。。${d[0]}"
            def na = d[0].trim()
            def e = GasComponentProperty.findByName(na)
            if (e) {
                result.message = '重复数据--${e}。'
                println "重复数据--${e}。"
            } else {
                def fn = d[3].trim()
                def f = PropertyFamily.findByAlias(fn)
                println "先检查类型： ${f}"
                if (!f) {
                    result.message = '非法的类型--${d[3}。'
                } else {
                    def np = new GasComponentProperty(
                        name: d[0],
                        description: d[1],
                        alias: d[2],
                        propertyFamily: f
                    )
                    np.save(flush: true)
                    result.message = "创建属性--${np}。"
                }
            }
        }
        //
        if (request.xhr) {
            render(template: "createPropertyNameResult", model:[result: result])
        } else {
            render(template: "createPropertyNameError", model:[result: result])
        }
    }
    
    /*
     * 将上传的文件先试一下，然后分两个步骤：导入一行、
     * */
    def importPropertyDataA() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "importPropertyDataA ${procedure}"
        
        def data = excelService.importExcelFile(params)
        
        def heads = []
        def h = data[0]
        h.eachWithIndex() {e, i->
            if (i>0) {
                println "? ${e}"
                def p = GasComponentProperty.findByAlias(e)
                if (p) {
                    heads.put(i, p)
                }
            }
        }
        println "---${heads}"
        model:[data: data, procedure: procedure, dataHeads: heads]
    }
    
    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportPropertyDataA() {
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
