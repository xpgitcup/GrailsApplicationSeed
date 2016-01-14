package cn.edu.cup.fluid.gas

class GasComponentProperty {
    
    String name
    String description
    String alias
    String unit

    static belongsTo = [propertyFamily: PropertyFamily]
    
    static constraints = {
        name(uniqued: true)
        description(nullable: true)
        alias(uniqued: true)
        unit(nullable: true)
    }
    
    static mapping = {
        sort('id')
        sort('propertyFamily')
        sort('name')
    }
    
    String toString() {
        return "${name}"
    }
    
    GasComponentProperty checkByAlias(aalias) {
        def q = createCriteria()
        def c = q.list() {
            like("alias", aalias)
        }
        def p = c[0]
        return p
    }
    
}
