package cn.edu.cup.fluid.gas

class GasComponentProperty {
    
    String name
    String description
    String alias

    static belongsTo = [propertyFamily: PropertyFamily]
    
    static constraints = {
        name()
        description(nullable: true)
        alias(nullable: true)
    }
    
    static mapping = {
        sort('propertyFamily')
        sort('name')
    }
    
    String toString() {
        return "${name}"
    }
}
