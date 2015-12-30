package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentParameterDataController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentParameterData.list(params), model:[gasComponentParameterDataInstanceCount: GasComponentParameterData.count()]
    }

    def show(GasComponentParameterData gasComponentParameterDataInstance) {
        respond gasComponentParameterDataInstance
    }

    def create() {
        respond new GasComponentParameterData(params)
    }

    @Transactional
    def save(GasComponentParameterData gasComponentParameterDataInstance) {
        if (gasComponentParameterDataInstance == null) {
            notFound()
            return
        }

        if (gasComponentParameterDataInstance.hasErrors()) {
            respond gasComponentParameterDataInstance.errors, view:'create'
            return
        }

        gasComponentParameterDataInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentParameterData.label', default: 'GasComponentParameterData'), gasComponentParameterDataInstance.id])
                redirect gasComponentParameterDataInstance
            }
            '*' { respond gasComponentParameterDataInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentParameterData gasComponentParameterDataInstance) {
        respond gasComponentParameterDataInstance
    }

    @Transactional
    def update(GasComponentParameterData gasComponentParameterDataInstance) {
        if (gasComponentParameterDataInstance == null) {
            notFound()
            return
        }

        if (gasComponentParameterDataInstance.hasErrors()) {
            respond gasComponentParameterDataInstance.errors, view:'edit'
            return
        }

        gasComponentParameterDataInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentParameterData.label', default: 'GasComponentParameterData'), gasComponentParameterDataInstance.id])
                redirect gasComponentParameterDataInstance
            }
            '*'{ respond gasComponentParameterDataInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentParameterData gasComponentParameterDataInstance) {

        if (gasComponentParameterDataInstance == null) {
            notFound()
            return
        }

        gasComponentParameterDataInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentParameterData.label', default: 'GasComponentParameterData'), gasComponentParameterDataInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentParameterData.label', default: 'GasComponentParameterData'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
