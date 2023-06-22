const faker = require('faker')

function generateUser() {
    const user= {
        firstname: faker.name.firstName(),
        lastname: faker.name.lastName(),
        phoneNumber: faker.phone.phoneNumber(),
        description:faker.lorem.paragraph(),
        adresse: faker.address.city(),
        email: faker.internet.email(),  
        birth: faker.date.recent(),
        productName: faker.commerce.productName(),
        society: faker.name.lastName(),
        statut: faker.datatype.boolean(),
        salary: faker.finance.amount(30000,100000,2), 
        jobTitle: faker.name.jobTitle(),           
        createdAt:faker.date.recent(),
    }
    return user
}

module.exports = generateUser