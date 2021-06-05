//Connection to SQL Server
//Command to retrieve values from node_module(downloaded by npm step) -mysql
//https://www.npmjs.com/package/mysql
const mysqlconnection = require("mysql");

//Define properties of the DB connection
//This is JSON object
properties = {
    host: "fintechsg08.mysql.database.azure.com",
    port: 3306,
    user: "fintechlab@fintechsg08",
    password: "FinTechSG2021",
    database: "grp6_nus_money_db"
  };

  connection = mysqlconnection.createConnection(properties);

   // Connect takes in a call back function errors 
  // Connect first and if there are errors call the mtd to handle errors
  connection.connect(
    
    (errors) => {
    if (errors) {
      console.log("Couldn't connect to the MySQL Server. Error: " + errors);
    } else {
      console.log("Connected to MySQL successfully!");
    }
  }
  
  );

    //Heartbeat to keep the connection alive so that there is no connection error
    setInterval(() => 
      {
        console.log("DB heartbeat to keep Db alive")
        connection.query("select 1");
      }
      
      , 60 * 1000);
    
      //assign connection to export object 
      module.exports = { connection };