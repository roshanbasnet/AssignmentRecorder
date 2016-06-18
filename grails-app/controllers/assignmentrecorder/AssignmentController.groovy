package assignmentrecorder

import org.codehaus.groovy.grails.web.json.JSONObject
import org.springframework.dao.DataIntegrityViolationException

class AssignmentController {
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

//    def show() {
//        render(view: "/index")
//    }
//
    def show(Assignment assignmentInstance) {
        respond assignmentInstance
    }


    def aboutUs() {
        render(view: "aboutUs")
    }

    def contactUs() {
        render(view: "contactUs")
    }
//
//    def show(){
//        render(view: 'show')
//    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [assignmentInstanceList: Assignment.list(params), assignmentInstanceTotal: Assignment.count(), listType: "All"]

    }

    def create() {
        [assignmentInstance: new Assignment(params)]
    }

    def save() {
        def assignmentInstance = new Assignment(params)
        if (!assignmentInstance.save(flush: true)) {
            render(view: "create", model: [assignmentInstance: assignmentInstance])
            return
        }

        flash.message = message(code: 'assignment.label', default: 'assignment created Succesfulxly')
        redirect(action: "create")

    }


    def edit() {
        def assignmentInstance = Assignment.findById(params.id)
        if (assignmentInstance) {
            println "ajhsjhashajhs  is  " + params.id
            [assignmentInstance: assignmentInstance]
        }
        else {
            flash.message = "Not Found!!"
            redirect(action: "index")
        }

    }

    def update() {
        def assignmentInstance = Assignment.findById(params.id)
        println "ajhsjhashajhs" + params.id

        if (assignmentInstance) {
            assignmentInstance.properties = params
            flash.message = message(code: 'default.updated.message', args: [message(code: 'assignment.label', default: 'assignment.Assignment'), assignmentInstance.id])
            redirect action: 'show'
        } else {
            redirect action: 'edit', params: [id: params.id]
        }
    }

    def delete() {
        def assignmentInstance = Assignment.findById(params.id)

        if (!assignmentInstance) {
            render action: 'index'
        }
        try {
            assignmentInstance.delete(flush: true)
            redirect(action: 'index')
        }
        catch (DataIntegrityViolationException e) {
            flash.message = "Something went wrong!!"
            redirect(action: 'index')
        }
    }
}

