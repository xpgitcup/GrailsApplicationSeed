package cn.edu.cup.fluid.gas

class GasComponentPropertyValue {

    Double value
    
    static belongsTo = [gasComponentProperty: GasComponentProperty, gasComponent: GasComponent]
    
    static constraints = {
        value()
    }
    
    String toString() {
        return "${gasComponent}.${gasComponentProperty}=${value}"
    }
}
