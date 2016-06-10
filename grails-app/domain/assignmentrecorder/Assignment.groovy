package assignmentrecorder

class Assignment {

    Integer id
    String subject
    String type
    String question
    String  description
    Date assignDate
    Date dueDate
   // String timeRemaining

    static constraints = {
        subject nullable: false,maxSize: 50;
        type (inList: ["Practical","Theory","Presentation"]);


    }
}