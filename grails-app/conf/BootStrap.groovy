import test.Test

class BootStrap {

    def init = { servletContext ->
        environments {
            development {
                for (int i=0; i<15; i++) {
                    def n = new Test(name: "张${i}")
                    n.save()
                }
            }
        }
    }
    def destroy = {
    }
}
