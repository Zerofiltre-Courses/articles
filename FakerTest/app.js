const express=require('express')
const app=express()
const mongoose=require("mongoose")
const bodyParser= require("body-parser")

app.use(bodyParser.json())
require('dotenv/config')

//Access the route from the user_route directory
const userRoute=require("./routes/user_route")

//Using the route by app.use
app.use("/user",userRoute)

// connect node to mongo db
mongoose.connect(process.env.DB_CONNECTION,
    {
      useNewUrlParser: true, useUnifiedTopology: true
    }).then(
      () => console.log('Connected')
    ).catch((err) =>
    {
      console.error(err);
      console.log("Not connected")
    }
);


//Port for test
app.listen(3000,()=>{
    console.log('Start with port 3000')
})