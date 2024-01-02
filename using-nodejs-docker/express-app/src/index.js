
const express = require('express')

const app = express()

const port = process.env.PORT ?? 3000
console.log("PORT => " + port)

app.get("/", (_request, response) => {
    const html_response = '<div style="display: flex; flex-direction:column; justify-content: center; align-items: center;">' + 
    '<h1> Express is running</h1>'+
    `<p> on port ${port}</p>` +
    '</div>'
    return response.send(html_response)
})

app.listen(port,() => {
    console.log("express is running on port " + port)
})