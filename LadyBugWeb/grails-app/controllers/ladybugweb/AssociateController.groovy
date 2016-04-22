package ladybugweb

import org.springframework.dao.DataIntegrityViolationException

class AssociateController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [associateInstanceList: Associate.list(params), associateInstanceTotal: Associate.count()]
    }

    def create() {
        [associateInstance: new Associate(params)]
    }

    def save() {
        def associateInstance = new Associate(params)
		associateInstance.lastModifiedDate = new Date()
        if (!associateInstance.save(flush: true)) {
            render(view: "create", model: [associateInstance: associateInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'associate.label', default: 'Associate'), associateInstance.id])
        redirect(action: "show", id: associateInstance.id)
    }

    def show(Long id) {
        def associateInstance = Associate.get(id)
        if (!associateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'associate.label', default: 'Associate'), id])
            redirect(action: "list")
            return
        }

        [associateInstance: associateInstance]
    }

    def edit(Long id) {
        def associateInstance = Associate.get(id)
        if (!associateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'associate.label', default: 'Associate'), id])
            redirect(action: "list")
            return
        }

        [associateInstance: associateInstance]
    }

    def update(Long id, Long version) {
        def associateInstance = Associate.get(id)
        if (!associateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'associate.label', default: 'Associate'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (associateInstance.version > version) {
                associateInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'associate.label', default: 'Associate')] as Object[],
                          "Another user has updated this Associate while you were editing")
                render(view: "edit", model: [associateInstance: associateInstance])
                return
            }
        }

        associateInstance.properties = params
		associateInstance.lastModifiedDate = new Date()
		
        if (!associateInstance.save(flush: true)) {
            render(view: "edit", model: [associateInstance: associateInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'associate.label', default: 'Associate'), associateInstance.id])
        redirect(action: "show", id: associateInstance.id)
    }

    def delete(Long id) {
        def associateInstance = Associate.get(id)
        if (!associateInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'associate.label', default: 'Associate'), id])
            redirect(action: "list")
            return
        }

        try {
            associateInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'associate.label', default: 'Associate'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'associate.label', default: 'Associate'), id])
            redirect(action: "show", id: id)
        }
    }
}
