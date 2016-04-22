package ladybugweb

import org.springframework.dao.DataIntegrityViolationException

class PriorityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [priorityInstanceList: Priority.list(params), priorityInstanceTotal: Priority.count()]
    }

    def create() {
        [priorityInstance: new Priority(params)]
    }

    def save() {
        def priorityInstance = new Priority(params)
        if (!priorityInstance.save(flush: true)) {
            render(view: "create", model: [priorityInstance: priorityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'priority.label', default: 'Priority'), priorityInstance.id])
        redirect(action: "show", id: priorityInstance.id)
    }

    def show(Long id) {
        def priorityInstance = Priority.get(id)
        if (!priorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'priority.label', default: 'Priority'), id])
            redirect(action: "list")
            return
        }

        [priorityInstance: priorityInstance]
    }

    def edit(Long id) {
        def priorityInstance = Priority.get(id)
        if (!priorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'priority.label', default: 'Priority'), id])
            redirect(action: "list")
            return
        }

        [priorityInstance: priorityInstance]
    }

    def update(Long id, Long version) {
        def priorityInstance = Priority.get(id)
        if (!priorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'priority.label', default: 'Priority'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (priorityInstance.version > version) {
                priorityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'priority.label', default: 'Priority')] as Object[],
                          "Another user has updated this Priority while you were editing")
                render(view: "edit", model: [priorityInstance: priorityInstance])
                return
            }
        }

        priorityInstance.properties = params

        if (!priorityInstance.save(flush: true)) {
            render(view: "edit", model: [priorityInstance: priorityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'priority.label', default: 'Priority'), priorityInstance.id])
        redirect(action: "show", id: priorityInstance.id)
    }

    def delete(Long id) {
        def priorityInstance = Priority.get(id)
        if (!priorityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'priority.label', default: 'Priority'), id])
            redirect(action: "list")
            return
        }

        try {
            priorityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'priority.label', default: 'Priority'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'priority.label', default: 'Priority'), id])
            redirect(action: "show", id: id)
        }
    }
}
