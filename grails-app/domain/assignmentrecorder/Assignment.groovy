package assignmentrecorder

class Assignment {

    Integer id
    String subject
    String type
    String  description
    String assignment
    Date assignDate
    String timeRemaining

    static constraints = {
        subject nullable: false,maxSize: 50;
        type (inList: ["Practical","Theory","Presentation"]);


    }
}