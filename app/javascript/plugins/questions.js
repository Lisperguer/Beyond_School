import { data } from "../../javascript/plugins/data.js"
import { Question } from "../../javascript/models/Question.js"
const questions = () =>{
  // console.log(data);
  return data.map(question => new Question(question.question, question.choices, question.answer));
  // const test = new Question(newQuestion[0].question,newQuestion[0].choices,newQuestion[0].answer)
  // console.log(test.correctAnswer(newQuestion[0].answer));
  // console.log(newQuestion[0].answer);
  
}
export default questions