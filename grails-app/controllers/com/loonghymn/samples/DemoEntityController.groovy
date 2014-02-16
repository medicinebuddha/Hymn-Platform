package com.loonghymn.samples



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DemoEntityController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DemoEntity.list(params), model:[demoEntityInstanceCount: DemoEntity.count()]
    }

    def show(DemoEntity demoEntityInstance) {
        respond demoEntityInstance
    }

    def create() {
        respond new DemoEntity(params)
    }

    @Transactional
    def save(DemoEntity demoEntityInstance) {
        if (demoEntityInstance == null) {
            notFound()
            return
        }

        if (demoEntityInstance.hasErrors()) {
            respond demoEntityInstance.errors, view:'create'
            return
        }

        demoEntityInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'demoEntityInstance.label', default: 'DemoEntity'), demoEntityInstance.id])
                redirect demoEntityInstance
            }
            '*' { respond demoEntityInstance, [status: CREATED] }
        }
    }

    def edit(DemoEntity demoEntityInstance) {
        respond demoEntityInstance
    }

    @Transactional
    def update(DemoEntity demoEntityInstance) {
        if (demoEntityInstance == null) {
            notFound()
            return
        }

        if (demoEntityInstance.hasErrors()) {
            respond demoEntityInstance.errors, view:'edit'
            return
        }

        demoEntityInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DemoEntity.label', default: 'DemoEntity'), demoEntityInstance.id])
                redirect demoEntityInstance
            }
            '*'{ respond demoEntityInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DemoEntity demoEntityInstance) {

        if (demoEntityInstance == null) {
            notFound()
            return
        }

        demoEntityInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DemoEntity.label', default: 'DemoEntity'), demoEntityInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'demoEntityInstance.label', default: 'DemoEntity'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
