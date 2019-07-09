import UIKit


class Scholar {
//Intentions: We want to create a class that serves as a blueprint for each individual scholar. Each scholar will have a different name, grade, location, etc.
    var grade = 10
    var study = "Swift"
    var name = "default"
    
    //the init function will run with EVERY class, meaning that we put properties there that every single object needs to have.
    //we will take the input and replace it in the properties above ^^
    init(scholarName: String, scholarGrade : Int, scholarStudy : String){
        name = scholarName
        grade = scholarGrade
        study = scholarStudy
    }
    //Here is an action that I've done within the class
    func writeCode() {
        print("\(name) is busy writing code at KWK Portland!")
    }
}

//calling Scholar() creats an object from the scholar class
var nailahScholar = Scholar(scholarName : "Nailah", scholarGrade : 10, scholarStudy : "Python")
var mayaScholar = Scholar(scholarName : "Maya", scholarGrade: 10, scholarStudy : "Swift")
var fionaScholar = Scholar(scholarName : "Fiona", scholarGrade : 9, scholarStudy : "Ruby")
print(fionaScholar.grade)
print(fionaScholar.name)
print(fionaScholar.study)

fionaScholar.writeCode()
