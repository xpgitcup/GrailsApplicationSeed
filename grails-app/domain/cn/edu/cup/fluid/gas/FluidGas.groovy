package cn.edu.cup.fluid.gas

class FluidGas {

    String name
    PseudoComponent pseudo
    
    static hasMany = [componentFactor: ComponentFactor]
    
    static mapping = {
        componentFactor sort: 'gasComponent'
    }
    
    static constraints = {
        name()
        pseudo(nullable: true)
    }
    
    String toString() {
        return "${name}(组分数：${componentFactor?.size})"
    }
    
    String componentFactors() {
        return "${componentFactor}"
    }
}
