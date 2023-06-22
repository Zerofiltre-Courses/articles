const express= require("express")
const { async } = require("rxjs")
require("dotenv").config()
const router=express.Router()

//Call user and function generateUser 
const User=require("../models/user_model")
const generateuser = require("../data/user_faker")


//Api for Generate user
router.post('/generate',async (req,res)=>{
    try { 
      const newU=new User(generateuser())
      await newU.save()
      res.json(newU)
      console.log('--User enregistrer--')
    } catch (error) {
      console.log(error)
    }
})

//Api for get all Users
router.get('/',async (req,res)=>{
    try {
      const users= await User.find()
      res.json(users)
      console.log("--Get all users--")
    } catch (error) {
      res.json({message:error})
      console.log("Error")
    }
})

module.exports=router