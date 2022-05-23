import { data } from "../../javascript/plugins/data.js"
import { Question } from "../../javascript/models/Question.js"
const helloWorld = () =>{

  const newQuestion = data.map(question => new Question(question.question, question.choices, question.answer))
}
export default helloWorld

// console.log("data")
// const modeloP = new Question(data );
// console.log(modeloP.text)

