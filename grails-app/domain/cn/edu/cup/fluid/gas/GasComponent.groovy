package cn.edu.cup.fluid.gas

class GasComponent {

    String name                 //英文名称
    String description          //中文名称
    String casNumber            //
    String chemFormula          //
    String unifacStructure      //
    String alias                //英文简称
    
    static belongsTo = [family: GasComponentFamily]
   
    static constraints = {
        name(nullable: true)
        description(nullable: true)
        casNumber(nullable: true)
        chemFormula(nullable: true)
        unifacStructure(nullable: true)
        alias(nullable: true)
    }
    
    static mapping = {
        sort("alias")
        sort("family")
    }
    
    String toString() {
        if (!name) {
            return "${alias}(${description})"
        } else {
            return "${name}(${description})"
        }
    }
    
    /*
     * 根据别名、名称、查找组分 --- 为什么必须说明称静态的？？？
     * */
    static searchGasComponent(String gname) {
        //先判断别名
        def byAlias = GasComponent.find("from GasComponent where alias like '%${gname}%'")
        if (byAlias) {
            return byAlias
        } else {
            //然后判断英文名
            def byName = GasComponent.findByName(gname)
            if (byName) {
                return byName
            } else {
                //判断中文名
                def byCnName = GasComponent.findByDescription(gname)
                if (byCnName) {
                    return byCnName
                } else {
                    def byCasNumber = GasComponent.findByCasNumber(gname)
                    if (byCasNumber) {
                        return byCasNumber
                    } else {
                        return null
                    }
                }
            }
        }
    }
}
