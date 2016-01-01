package cn.edu.cup.fluid.gas.tools

class FluidGasToolsController {

    def prepareImportGasComponentNames() {
        def pp = [:]
        pp.message = "气体组分"
        pp.templateFile = "gasComponentNames" 
        pp.processController = "" 
        pp.processAction = ""
        
        chain(controller: "file", 
            action: "uploadExcelFile", 
            params:pp
        )
    }
    
    def index() { }
}
