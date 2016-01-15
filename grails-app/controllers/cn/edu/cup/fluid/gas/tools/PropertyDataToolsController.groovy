package cn.edu.cup.fluid.gas.tools

import cn.edu.cup.fluid.gas.GasComponent
import cn.edu.cup.fluid.gas.GasComponentProperty
import cn.edu.cup.fluid.gas.GasComponentPropertyValue
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
        //----------------------------------------------------------------------
        //属性数据信息
        def ps = params.list('properties[]')  //这是获取数据的关键。
        println "ps=${ps}"
        def mn = ps.size()
        def pps = [null]
        ps.eachWithIndex {e, i->
            if(i>0) {
                pps[i] = GasComponentProperty.get(e)
            }
        }
        //----------------------------------------------------------------------
        //数据信息
        def d = params.list('names[]')  //这是获取数据的关键。
        println "d=${d}"
        def n = d.size()
        if (n<mn) {
            result.message = '信息不全，数据列数不足。'
            println "信息不全，数据列数不足。"
        } else {
            def gasName = d[0]
            println "${gasName}"
            def gas = GasComponent.findByAlias(gasName)
            println "${gas}"
            if (gas) {
                d.eachWithIndex{e, i->
                    if (i>0) {
                        println "${e}, ${i}, ${pps[i]}"
                        def pd = new GasComponentPropertyValue(
                            value: e,
                            gasComponentProperty: pps[i],
                            gasComponent: gas
                        )
                        pd.save(flush: true)
                        println "属性：${pd}"
                    }
                }
            }
        }
        //
        if (request.xhr) {
            render(template: "createPropertyDataResult", model:[result: result])
        } else {
            render(template: "createPropertyDataError", model:[result: result])
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
        
        def heads = [:]
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
