package cn.edu.cup.fluid.gas

class ComponentFactor {

    GasComponent gasComponent
    Double value
    
    static belongsTo = [fluidGas: FluidGas]
    
    static constraints = {
        gasComponent()
        value()
    }
    
    static mapping = {
        sort("gasComponent")
        sort("fluidGas")
    }
    
    String toString() {
        return "[\'${gasComponent}\',${value}]"
    }
}
