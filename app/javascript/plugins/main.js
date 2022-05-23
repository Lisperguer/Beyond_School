import questions from "../plugins/questions.js"

import Quiz from "../../javascript/models/Quiz.js"
import Ui from "../models/Ui.js";
 

const renderPage = (quiz, ui) => {
  if (quiz.isEnded()) {
    ui.showScores(quiz.score);
  } else {
    console.log(quiz);
    ui.showQuestion(quiz.getQuestionIndex().text);
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
 
  export default main

