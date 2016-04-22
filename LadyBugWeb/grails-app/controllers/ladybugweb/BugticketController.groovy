package ladybugweb

import org.springframework.dao.DataIntegrityViolationException

class BugticketController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [bugticketInstanceList: Bugticket.list(params), bugticketInstanceTotal: Bugticket.count()]
    }

    def create() {
        [bugticketInstance: new Bugticket(params)]
    }

    def save() {
        def bugticketInstance = new Bugticket(params)
		bugticketInstance.lastModifiedDate = new Date()
        if (!bugticketInstance.save(flush: true)) {
            render(view: "create", model: [bugticketInstance: bugticketInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), bugticketInstance.id])
        redirect(action: "show", id: bugticketInstance.id)
    }

    def show(Long id) {
        def bugticketInstance = Bugticket.get(id)
        if (!bugticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), id])
            redirect(action: "list")
            return
        }

        [bugticketInstance: bugticketInstance]
    }

    def edit(Long id) {
        def bugticketInstance = Bugticket.get(id)
        if (!bugticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), id])
            redirect(action: "list")
            return
        }

        [bugticketInstance: bugticketInstance]
    }

    def update(Long id, Long version) {
        def bugticketInstance = Bugticket.get(id)
        if (!bugticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bugticketInstance.version > version) {
                bugticketInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'bugticket.label', default: 'Bugticket')] as Object[],
                          "Another user has updated this Bugticket while you were editing")
                render(view: "edit", model: [bugticketInstance: bugticketInstance])
                return
            }
        }

        bugticketInstance.properties = params
		bugticketInstance.lastModifiedDate = new Date()
		
        if (!bugticketInstance.save(flush: true)) {
            render(view: "edit", model: [bugticketInstance: bugticketInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), bugticketInstance.id])
        redirect(action: "show", id: bugticketInstance.id)
    }

    def delete(Long id) {
        def bugticketInstance = Bugticket.get(id)
        if (!bugticketInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), id])
            redirect(action: "list")
            return
        }

        try {
            bugticketInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bugticket.label', default: 'Bugticket'), id])
            redirect(action: "show", id: id)
        }
    }
}
