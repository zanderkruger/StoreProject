# StoreProject
Exactly what it says a .net project that will connect to a db. for testing and learning only


//you need to import these libraries in order for asp to recognise what you're doing

using System.Data;
using System.Data.SqlClient;

//you also need to create the connection so it can be established you can do this inside the main class or in the button click method
public SqlConnection storeConnection = new SqlConnection("add db connection ");
//P.S i did it in the main class hence the public

//button void class, this code essentially tests if there is a connection to the database
 storeConnection.Open();
        if ((storeConnection.State & ConnectionState.Open) > 0)
        {
            Response.Write("Connection OK!");
            storeConnection.Close();
        }
        else
        {
            Response.Write("Connection no good!");
        }
