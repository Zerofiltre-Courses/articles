const mongoose= require('mongoose')
//Model for user
const UserSchema=mongoose.Schema(
    {       
        firstname:{ type:String,required: true },
        lastname: { type:String,required: true },
        phoneNumber: { type:String,required: true },
        description: { type:String,required:true },
        adresse: { type:String,required:true },
        email: { type:String,required:true },
        birth: { type:String,required:true },
        productName: { type:String,required:true },
        society: { type:String,required:true },
        statut: { type:Boolean, required:true },
        salary: { type:Number, required:true },
        jobTitle:{ type:String,required:true },
        createdAt : {type:Number, required:true }
    }
)
const UserModel= mongoose.model('User',UserSchema)
module.exports=UserModel