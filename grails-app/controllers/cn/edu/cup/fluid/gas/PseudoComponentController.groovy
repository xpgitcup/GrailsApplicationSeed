package cn.edu.cup.fluid.gas



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PseudoComponentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PseudoComponent.list(params), model:[pseudoComponentInstanceCount: PseudoComponent.count()]
    }

    def show(PseudoComponent pseudoComponentInstance) {
        respond pseudoComponentInstance
    }

    def create() {
        respond new PseudoComponent(params)
    }

    @Transactional
    def save(PseudoComponent pseudoComponentInstance) {
        if (pseudoComponentInstance == null) {
            notFound()
            return
        }

        if (pseudoComponentInstance.hasErrors()) {
            respond pseudoComponentInstance.errors, view:'create'
            return
        }

        pseudoComponentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pseudoComponent.label', default: 'PseudoComponent'), pseudoComponentInstance.id])
                redirect pseudoComponentInstance
            }
            '*' { respond pseudoComponentInstance, [status: CREATED] }
        }
    }

    def edit(PseudoComponent pseudoComponentInstance) {
        respond pseudoComponentInstance
    }

    @Transactional
    def update(PseudoComponent pseudoComponentInstance) {
        if (pseudoComponentInstance == null) {
            notFound()
            return
        }

        if (pseudoComponentInstance.hasErrors()) {
            respond pseudoComponentInstance.errors, view:'edit'
            return
        }

        pseudoComponentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PseudoComponent.label', default: 'PseudoComponent'), pseudoComponentInstance.id])
                redirect pseudoComponentInstance
            }
            '*'{ respond pseudoComponentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PseudoComponent pseudoComponentInstance) {

        if (pseudoComponentInstance == null) {
            notFound()
            return
        }

        pseudoComponentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PseudoComponent.label', default: 'PseudoComponent'), pseudoComponentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pseudoComponent.label', default: 'PseudoComponent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
