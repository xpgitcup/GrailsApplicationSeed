package cn.edu.cup.fluid.gas

class PropertyFamily {

    String name
    String description
    
    static constraints = {
        name(unique: true)
        description(nullable: true)
    }
    
    String toString() {
        return "${name}"
    }
}
