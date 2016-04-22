package ladybugweb

import org.springframework.dao.DataIntegrityViolationException

class HistoryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [historyInstanceList: History.list(params), historyInstanceTotal: History.count()]
    }

    def create() {
        [historyInstance: new History(params)]
    }

    def save() {
        def historyInstance = new History(params)
        if (!historyInstance.save(flush: true)) {
            render(view: "create", model: [historyInstance: historyInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'history.label', default: 'History'), historyInstance.id])
        redirect(action: "show", id: historyInstance.id)
    }

    def show(Long id) {
        def historyInstance = History.get(id)
        if (!historyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'history.label', default: 'History'), id])
            redirect(action: "list")
            return
        }

        [historyInstance: historyInstance]
    }

    def edit(Long id) {
        def historyInstance = History.get(id)
        if (!historyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'history.label', default: 'History'), id])
            redirect(action: "list")
            return
        }

        [historyInstance: historyInstance]
    }

    def update(Long id, Long version) {
        def historyInstance = History.get(id)
        if (!historyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'history.label', default: 'History'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (historyInstance.version > version) {
                historyInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'history.label', default: 'History')] as Object[],
                          "Another user has updated this History while you were editing")
                render(view: "edit", model: [historyInstance: historyInstance])
                return
            }
        }

        historyInstance.properties = params

        if (!historyInstance.save(flush: true)) {
            render(view: "edit", model: [historyInstance: historyInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'history.label', default: 'History'), historyInstance.id])
        redirect(action: "show", id: historyInstance.id)
    }

    def delete(Long id) {
        def historyInstance = History.get(id)
        if (!historyInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'history.label', default: 'History'), id])
            redirect(action: "list")
            return
        }

        try {
            historyInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'history.label', default: 'History'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'history.label', default: 'History'), id])
            redirect(action: "show", id: id)
        }
    }
}
