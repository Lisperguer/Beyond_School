// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"
import helloWorld from "../plugins/app.js"
// helloWorld();
import questions from "../plugins/questions.js"
import Quiz from "../models/Quiz.js"
import Ui from "../models/Ui.js"
import main  from "../plugins/main.js"
  main();
