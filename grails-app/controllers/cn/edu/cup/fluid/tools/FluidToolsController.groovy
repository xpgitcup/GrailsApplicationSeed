package cn.edu.cup.fluid.tools

import cn.edu.cup.fluid.gas.GasComponent
import cn.edu.cup.fluid.gas.ComponentFactor
import cn.edu.cup.fluid.gas.FluidGas
import cn.edu.cup.fluid.gas.PseudoComponent
import cn.edu.cup.system.SystemProcedure
import grails.transaction.Transactional

class FluidToolsController {
    
    def commonService
    def excelService
    
    /*
     * 下载
     * */
    def download(params) {
        commonService.download(params)
    }
    
    /*
     * 创建数据模板
     * */
    def createGasTemplate(filename, components) {
        def heads = []
        def row = ['在此输入气体名称']
        heads.add(row)
        components.each {e->
            def r = []
            r.add(e)
            heads.add(r)
        }
        def tn = filename;//"temp/propertyTemplate.xls"
        excelService.exportExcelFile(tn, heads)
    }

    /*
     * 
     * */
    def showExportExcelFile() {
        println "${params}"
        def ofile = "0000"
        model:[ofile: ofile]
    }
    
    /*
     * 分页显示组分信息，选择，然后导出到Excel文件
     * */
    def exportComponentNames() {
        def targetFileName = "temp/GasTemplate.xls"
        def targetFile = new File(targetFileName)
        def components = []
        if (!targetFile.exists()) {
            createGasTemplate(targetFileName, components)
        } else {
            //如果文件存在，将文件中的信息保存到列表中
            params.filename = targetFileName
            def data = excelService.importExcelFile(params)
            data.eachWithIndex(){e,i->
                if (i>0) {
                    components.add(e)
                }
            }
        }
        model:[targetFileName: targetFileName, components: components, count: GasComponent.count]
    }
    
    /*
     * 将上传的文件先试一下，然后分两个步骤：导入一行、
     * */
    @Transactional
    def importComponentFactors() {
        def id = params.stepid
        def procedure = SystemProcedure.get(id)
        println "importComponentFactors ${procedure}"
        /*
         * 获取数据
         * */
        def data = excelService.importExcelFile(params)
        //先检查气体名称、组分名称、以及假组分名称
        def gname = '未命名'
        def zfNames = [:]
        def nzfNames = [:]
        data.eachWithIndex() {e, i->
            println "${i}---${e}"
            //如果第一行只有一个数据，第一个数据就是气体的名字
            if (e[0] != "") {
                if ((i == 0) && (e[1] == "")) {
                    gname = e[0]
                    println "给气体命名： ${gname}"
                } else {
                    def name = e[0]
                    println "${name}"
                    def p = GasComponent.searchGasComponent(name)
                    if (p) {
                        zfNames.put(p, e[1]) 
                    } else {
                        nzfNames.put(e[0], e[1])
                    }
                }
            }
        }
        /*
         * 分析、插入数据
         * */
        def gas = new FluidGas(name: gname)
        //------------------------------------------------------------------
        if (nzfNames?.size()==1) {
            def key = nzfNames.keySet()[0]
            def f = nzfNames.get(key)
            def ps = new PseudoComponent(name: key, 
                factor: f,
                fluidGas: gas
            )
            ps.save(flush: true)
            //println "save ${ps}"
        }
        //------------------------------------------------------------------
        gas.save(flush: true)
        //println "save ${gas}"
        //------------------------------------------------------------------
        zfNames.eachWithIndex() {e, i->
            //println "${e} -- ${i}"
            def p = e.getKey()
            def f = e.value
            //println "${p}  ${f}"
            def gc = new ComponentFactor(gasComponent: e.key,
                value: f,
                fluidGas: gas
            )
            gc.save(flush: true)
            //println "save ${gc}"
        }
        
        //------------------------------------------------------------------
        redirect(controller: "fluidTools", action: "index")
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
    
    
    def show(FluidGas fluidGasInstance) {
        respond fluidGasInstance
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond FluidGas.list(params), model:[fluidGasInstanceCount: FluidGas.count()]
    }
    
}
