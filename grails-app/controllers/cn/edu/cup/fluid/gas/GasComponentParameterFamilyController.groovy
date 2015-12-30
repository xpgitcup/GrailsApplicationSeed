package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GasComponentParameterFamilyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GasComponentParameterFamily.list(params), model:[gasComponentParameterFamilyInstanceCount: GasComponentParameterFamily.count()]
    }

    def show(GasComponentParameterFamily gasComponentParameterFamilyInstance) {
        respond gasComponentParameterFamilyInstance
    }

    def create() {
        respond new GasComponentParameterFamily(params)
    }

    @Transactional
    def save(GasComponentParameterFamily gasComponentParameterFamilyInstance) {
        if (gasComponentParameterFamilyInstance == null) {
            notFound()
            return
        }

        if (gasComponentParameterFamilyInstance.hasErrors()) {
            respond gasComponentParameterFamilyInstance.errors, view:'create'
            return
        }

        gasComponentParameterFamilyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'gasComponentParameterFamily.label', default: 'GasComponentParameterFamily'), gasComponentParameterFamilyInstance.id])
                redirect gasComponentParameterFamilyInstance
            }
            '*' { respond gasComponentParameterFamilyInstance, [status: CREATED] }
        }
    }

    def edit(GasComponentParameterFamily gasComponentParameterFamilyInstance) {
        respond gasComponentParameterFamilyInstance
    }

    @Transactional
    def update(GasComponentParameterFamily gasComponentParameterFamilyInstance) {
        if (gasComponentParameterFamilyInstance == null) {
            notFound()
            return
        }

        if (gasComponentParameterFamilyInstance.hasErrors()) {
            respond gasComponentParameterFamilyInstance.errors, view:'edit'
            return
        }

        gasComponentParameterFamilyInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GasComponentParameterFamily.label', default: 'GasComponentParameterFamily'), gasComponentParameterFamilyInstance.id])
                redirect gasComponentParameterFamilyInstance
            }
            '*'{ respond gasComponentParameterFamilyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GasComponentParameterFamily gasComponentParameterFamilyInstance) {

        if (gasComponentParameterFamilyInstance == null) {
            notFound()
            return
        }

        gasComponentParameterFamilyInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GasComponentParameterFamily.label', default: 'GasComponentParameterFamily'), gasComponentParameterFamilyInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'gasComponentParameterFamily.label', default: 'GasComponentParameterFamily'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
