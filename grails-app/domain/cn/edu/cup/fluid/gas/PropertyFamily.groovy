package cn.edu.cup.fluid.gas

class PropertyFamily {

    String name
    String description
    
    static hasMany = [property: GasComponentProperty]
    
    static constraints = {
        name(unique: true)
        description(nullable: true)
    }
    
    static mapping = {
        property sort('')
    }
    
    String toString() {
        return "${name}"
    }
}
