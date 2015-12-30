package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentParameterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentParameter.list(params), model:[gasComponentParameterInstanceCount: GasComponentParameter.count()]
    }

    def show(GasComponentParameter gasComponentParameterInstance) {
        respond gasComponentParameterInstance
    }

    def create() {
        respond new GasComponentParameter(params)
    }

    @Transactional
    def save(GasComponentParameter gasComponentParameterInstance) {
        if (gasComponentParameterInstance == null) {
            notFound()
            return
        }

        if (gasComponentParameterInstance.hasErrors()) {
            respond gasComponentParameterInstance.errors, view:'create'
            return
        }

        gasComponentParameterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentParameter.label', default: 'GasComponentParameter'), gasComponentParameterInstance.id])
                redirect gasComponentParameterInstance
            }
            '*' { respond gasComponentParameterInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentParameter gasComponentParameterInstance) {
        respond gasComponentParameterInstance
    }

    @Transactional
    def update(GasComponentParameter gasComponentParameterInstance) {
        if (gasComponentParameterInstance == null) {
            notFound()
            return
        }

        if (gasComponentParameterInstance.hasErrors()) {
            respond gasComponentParameterInstance.errors, view:'edit'
            return
        }

        gasComponentParameterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentParameter.label', default: 'GasComponentParameter'), gasComponentParameterInstance.id])
                redirect gasComponentParameterInstance
            }
            '*'{ respond gasComponentParameterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentParameter gasComponentParameterInstance) {

        if (gasComponentParameterInstance == null) {
            notFound()
            return
        }

        gasComponentParameterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentParameter.label', default: 'GasComponentParameter'), gasComponentParameterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentParameter.label', default: 'GasComponentParameter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
