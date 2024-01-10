const ejs = require('ejs')
const fs = require('fs')
const path = require('path')
const total = process.env.TOTAL ?? 10

const fileTemplateBase = path.join(__dirname, 'templates')
const fileOutBase = path.join(__dirname, 'input', 'fsh')
for (let id = 0; id < total; id++) {
  let data = { id: id }
  // plandefinition
  ejs.renderFile(
    path.join(fileTemplateBase, `planDefinition.ejs`),
    data,
    (err, str) => {
      if (err) { console.error(err) }
      fs.writeFileSync(path.join(fileOutBase, `planDefinition${id}.fsh`), str)
    }
  )

  // questionnaire
  ejs.renderFile(
    path.join(fileTemplateBase, `questionnaire.ejs`),
    data,
    function (err, str) {
      if (err) { console.error(err) }
      fs.writeFileSync(path.join(fileOutBase, `questionnaire${id}.fsh`), str)
    }
  )
}
