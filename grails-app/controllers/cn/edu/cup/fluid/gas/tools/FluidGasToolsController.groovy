package cn.edu.cup.fluid.gas.tools

class FluidGasToolsController {

    def prepareImportGasComponentNames() {
        chain(controller: "file", 
            action: "uploadExcelFile", 
            params:[
                message: "气体组分",
                templateFile: "gasComponentNames", 
                processController: "", 
                processAction: ""]
        )
    }
    
    def index() { }
}
