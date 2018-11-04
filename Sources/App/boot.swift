import Vapor
// PostgreSQL
import SwiftKuery
import SwiftKueryPostgreSQL

let url = URL(string: "postgres://aqgsjrqpwzkgqi:3f6495fe24eea616af368351b6f8ce393a6470d3144ece844d0221901b149193@ec2-54-247-98-162.eu-west-1.compute.amazonaws.com:5432/d2tnkb5jbalghm")
var dbConnection: PostgreSQLConnection? = nil;

/// Called after your application has initialized.
public func boot(_ app: Application) throws {
    // your code here

dbConnection = PostgreSQLConnection(url: url!)

dbConnection!.connect(onCompletion: { (error) -> Void in 
    if nil == error {
        print("NO ERROR")
        return
    }

    print("ERROR:\(error!)")
    return
} )


}
