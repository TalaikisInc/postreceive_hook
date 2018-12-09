const express = require('express')
const { join } = require('path')
const app = express()

app.use(require('compression')())
app.use(express.static(join(__dirname, 'build')))

app.get('/*', (req, res) => {
  res.sendFile(join(__dirname, 'build', 'index.html'))
})

const PORT = process.env.PROD_PORT ? process.env.PROD_PORT : 3000
app.listen(PORT, '0.0.0.0', (err) => {
  if (err) {
    console.log(err)
  }
  console.info(`==> listening on http://localhost:${PORT}.`)
})
