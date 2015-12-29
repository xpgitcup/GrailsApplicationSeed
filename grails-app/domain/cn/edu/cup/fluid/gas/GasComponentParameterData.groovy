package cn.edu.cup.fluid.gas

class GasComponentParameterData {
    
    Double value 
    
    static belongsTo = [gasComponent: GasComponent, gasComponentParameter: GasComponentParameter]

    static constraints = {
    }
    
    String toString() {
        return "${gasComponent}.${gasComponentParameter}=${value}"
    }
}
