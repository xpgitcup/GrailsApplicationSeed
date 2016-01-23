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
