import questions from "../plugins/questions.js"

import Quiz from "../../javascript/models/Quiz.js"
import Ui from "../models/Ui.js";
 

const renderPage = (quiz, ui) => {
  if (quiz.isEnded()) {
    if (quiz.score >= quiz.questions.length*0.8){
      // console.log("Has aprobado el curso")
      swal("Hello world!");

      ui.showScores(quiz.score);
    }
    else{
      console.log("Has desaprovado el curso")
    }
  } else {
    console.log(quiz);
    ui.showQuestion(quiz.getQuestionIndex().text);
    ui.showProgress(quiz.questionIndex + 1, quiz.questions.length);
    ui.showChoices(quiz.getQuestionIndex().choices, (currenChoice) => {
      quiz.guess(currenChoice);
      renderPage(quiz, ui);
    });
  }
};

  const main = () =>{
    const quiz = new Quiz(questions());
    console.log(quiz);
    const ui = new Ui();
    ui.showQuestion(quiz.getQuestionIndex().text);
    ui.showChoices(quiz.getQuestionIndex().choices, (currenChoice) => {
      quiz.guess(currenChoice);
      renderPage(quiz, ui);
    });

  }
 main();
  export default main


section/8
window.location (localhost:3000)

/quizz/7
