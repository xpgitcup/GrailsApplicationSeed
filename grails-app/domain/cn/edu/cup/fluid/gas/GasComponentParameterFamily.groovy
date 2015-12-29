package cn.edu.cup.fluid.gas

class GasComponentParameterFamily {

    String name
    String description

    static constraints = {
        name()
        description(nullable: true)
    }
    
    String toString() {
        return "${name}(${description})"
    }

}
