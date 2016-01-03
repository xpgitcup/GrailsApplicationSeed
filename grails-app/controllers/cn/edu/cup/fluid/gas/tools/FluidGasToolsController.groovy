package cn.edu.cup.fluid.gas.tools

class FluidGasToolsController {

    /*
     * 准备工作，显示上传文件的页面，同时制定后续处理的控制类以及动作
     * */
    def prepareImportGasComponentNames() {
        def pp = [:]
        pp.message = "气体组分"
        pp.templateFile = "gasComponentNames" 
        pp.processController = "fluidGasTools" 
        pp.processAction = "importGasComponentNames"
        
        chain(controller: "file", 
            action: "uploadExcelFile", 
            params: pp,
            model:[nextStep: pp]
        )
    }
    
    def index() { }
}
