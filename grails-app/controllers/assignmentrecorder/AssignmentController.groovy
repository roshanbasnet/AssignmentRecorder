package assignmentrecorder

import org.codehaus.groovy.grails.web.json.JSONObject
import org.springframework.dao.DataIntegrityViolationException

class AssignmentController {
    static allowedMethods = [save: "POST", update: "POST", delete: "DELETE"]

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
//        [assignmentInstanceList: Assignment.list(params), assignmentInstanceTotal: Assignment.count(), listType: "All"]
        [assignmentInstanceList: Assignment.list(params), listType: "All"]

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

        flash.message = message(code: 'assignment.label', default: 'assignment created Successfully')
        redirect(action: "create")

    }


    def edit() {
        def assignmentInstance = Assignment.findById(params.id)
        if (assignmentInstance) {
            [assignmentInstance: assignmentInstance]
        }
        else {
            flash.message = "Not Found!!"
            redirect(action: "index")
        }

    }

    def update() {
        println params
        def assignmentInstance = Assignment.findById(params.id)
        if (assignmentInstance) {
            assignmentInstance.properties = params
            assignmentInstance.save(flush: true)
            flash.message = message(code: 'assignment.label', default: 'assignment updated Succesfully')
            redirect action: 'index'
        } else {
            redirect action: 'edit', params: [id: params.id]
        }
    }

    def delete() {
        def assignmentInstance = Assignment.findById(params.id)
//        def assignmentInstance = Assignment.get(params.id)

//        println(params.id)
//        render action: 'index'
        if (!assignmentInstance) {
            render action: 'index'
        }
        try {
            assignmentInstance.delete(flush: true,failOnerror:true)
            redirect(action: 'index')
        }
        catch (DataIntegrityViolationException e) {
            flash.message = "Something went wrong!!"
            redirect(action: 'index')
        }
    }
}

