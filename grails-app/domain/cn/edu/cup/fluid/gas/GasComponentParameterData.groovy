package cn.edu.cup.fluid.gas

class GasComponentParameterData {
    
    String name
    Double value 
    String unit
    
    static belongsTo = [gasComponent: GasComponent, gasComponentParameter: GasComponentParameter]

    static constraints = {
        name(nullable: true)
        value()
        unit(nullable: true)
    }
    
    static mapping = {
        sort: 'id'
        sort: 'name'
    }
    
    String toString() {
        return "${gasComponent}.${gasComponentParameter}=${value}"
    }
}
