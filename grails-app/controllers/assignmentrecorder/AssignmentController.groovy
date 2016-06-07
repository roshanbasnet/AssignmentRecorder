package assignmentrecorder

import org.codehaus.groovy.grails.web.json.JSONObject
import org.springframework.dao.DataIntegrityViolationException

class AssignmentController {
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        render(view: "/index")
    }
    def aboutUs(){
        render(view: "aboutUs")
    }

    def contactUs(){
        render(view: "contactUs")
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [assignmentInstance: Assignment.list(params), assignmentTolatInstance: Assignment.count(),listType:"All"]

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

        flash.message = message(code: 'assignment.label', default: 'assignment created Succesfully')
        redirect(action: "create")
    }
    def edit() {
        println params.id
        def assignmentInstance = Assignment.findById(params.id)
        if (!assingnmentInstance) {
            flash.message ="Not Found!!"
            redirect(action: "list")
        }
        [assignmentInstance: assingnmentInstance]
    }

    def update() {
        def assignmentInstance = Assignment.findById(params.id)
        if(assignmentInstance){
            assignmentInstance.properties = params
            flash.message = message(code: 'default.updated.message', args: [message(code: 'assignment.label', default: 'assignment.Assignment'), assignmentInstance.id])
            redirect action: 'list'
        }
        else{
            redirect action: 'edit',params: [id:params.id]
        }
    }

    def delete() {
        def assignmentInstance = Assignment.findById(params.id)
        if (!assignmentInstance) {
            render action: 'list'
        }
        try {
            assignmentInstance.delete(flush: true)
            redirect(action: 'list')
        }
        catch (DataIntegrityViolationException e) {
            flash.message = "Something went wrong!!"
            redirect(action: 'list')
        }

    }




}


