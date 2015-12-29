package cn.edu.cup.fluid.gas

class GasComponentParameter {

    String name
    String description
    String parameterUnit

    static belongsTo = [family: GasComponentParameterFamily]
    
    static constraints = {
        name()
        description(nullable: true)
        parameterUnit(nullable: true)
    }
    
    String toString() {
        return "${name}(${description})"
    }
    
}
