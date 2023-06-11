const express = require('express')
const app = express()
const path = require('path')
const port = 80

app.get('/', (request, response) => {
  response.sendFile(path.resolve("./frontend/src/index.html"), {
    "Content-Type": "text/html",
  })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
