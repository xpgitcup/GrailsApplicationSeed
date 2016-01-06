package cn.edu.cup.fluid.gas

class GasComponentProperty {
    
    String name

    static belongsTo = [propertyFamily: PropertyFamily]
    
    static constraints = {
        name()
    }
    
    static mapping = {
        sort('propertyFamily')
        sort('name')
    }
    
    String toString() {
        return "${name}"
    }
}
