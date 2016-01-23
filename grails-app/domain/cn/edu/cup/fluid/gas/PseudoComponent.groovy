package cn.edu.cup.fluid.gas

class PseudoComponent {
    
    String name
    Double factor
    Double trueBoilingPoint 
    Double densityOfLiquidPhase
    Double molarMass
    
    static belongsTo = [fluidGas: FluidGas]
    
    static constraints = {
        name()
        factor(nullable: true)
        trueBoilingPoint(nullable: true) 
        densityOfLiquidPhase(nullable: true)
        molarMass(nullable: true)
    }
    
    String toString() {
        return "[\'${name}\',${factor}]"
    }
}
