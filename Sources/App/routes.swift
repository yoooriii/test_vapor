import Vapor
import SwiftKuery
import SwiftKueryPostgreSQL

let grades = Grades()
 // First build query
 let query = Select(grades.course, grades.grade, from: grades)


/// Register your application's routes here.
public func routes(_ router: Router) throws {
    // Basic "It works" example
    router.get { req in
        return "It works!"
    }
    
    // Basic "Hello, world!" example
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.get("api") { req in
        return "API test interface"
    }

    router.get("users", Int.parameter) { req in
        let id = try req.parameters.next(Int.self)
        return "User id: #\(id)"
    }

        router.get("test2") { req in
        return "API ???test2???"
    }

    router.get("sql/student") { req in

//    public func execute(query: Query, onCompletion: @escaping ((QueryResult) -> ())) {
//    public func execute(_ raw: String, onCompletion: @escaping ((QueryResult) -> ())) {

         let sql = "SELECT * from student;"
        // dbCnnection.execute(sql, onCompletion:{ (sqlResult) -> Void in
        //     print("sqlResult: \(sqlResult)")
        // })

        return sql//"getting student from db..."
    }

    // Example of configuring a controller
    let todoController = TodoController()
    router.get("todos", use: todoController.index)
    router.post("todos", use: todoController.create)
    router.delete("todos", Todo.parameter, use: todoController.delete)
}
