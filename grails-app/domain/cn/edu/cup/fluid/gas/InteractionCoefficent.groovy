package cn.edu.cup.fluid.gas

class InteractionCoefficent {

    GasComponent componetA
    GasComponent componetB
    Double Value
    
    static constraints = {
        componentA()
        componentA()
        value()
    }
    
    String toString() {
        return "(${componetA},${componetB})=${value}"
    }
}
