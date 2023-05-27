const express = require('express')
const app = express()
const port = 80

app.get('/', (request, response) => {
  response.sendFile('index.html')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
