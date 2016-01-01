package cn.edu.cup.common

class FileController {
    
    def commonService
    def excelService
    
    /*
     * 具体执行上传，然后显示
     * */
    def doUploadExcelFile() {
        println "import ${params}"
        params.destDir = "temp"
        def destFile = commonService.upload(params)
        println "${destFile}"
        params.filename = destFile.path
        def data = excelService.importExcelFile(params)
        render(view: "showDataTable", controller: "gasTool", 
            model:[data: data, 
                filename: destFile.path, 
                nextAction: 'doImportComponentParameterDataFromArray'])
        
    }
    
    /*
     * 上传Excel文件窗体
     * */
    def uploadExcelFile(params) {
        //def templateFile = params.templateFile
        //println "uploadExcelFile ${params} ?? ${templateFile}"
        //model: [params: params, templateFile: templateFile]
    }

    def index() { }
}
