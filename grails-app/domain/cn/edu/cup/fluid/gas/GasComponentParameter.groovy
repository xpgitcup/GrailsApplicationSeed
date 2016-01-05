package cn.edu.cup.fluid.gas

class GasComponentParameter {

    String name
    String description
    String parameterUnit
    String alias

    static belongsTo = [family: GasComponentParameterFamily]
    
    static constraints = {
        name()
        alias(nullable: true)
        description(nullable: true)
        parameterUnit(nullable: true)
    }
    
    String toString() {
        return "${name}(${description})"
    }
    
}
