import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log(this.contentTarget)
  }


  revealContent1(event) {
    let click1 = []
    event.preventDefault()
    this.contentTargets.forEach((element) => {
      console.log(element)
      click1.push(1)
    });
    console.log(click1)
  }

  revealContent2(event) {
    let click2 = []
    event.preventDefault()
    this.contentTargets.forEach((element) => {
      console.log(element)
      click2.push(1)
    });
    console.log(click2)
  }

  revealContent3(event) {
    let click3 = []
    event.preventDefault()
    this.contentTargets.forEach((element) => {
      console.log(element)
      click3.push(1)
    });
    console.log(click3)
  }

  revealContent4(event) {
    let click4 = []
    event.preventDefault()
    this.contentTargets.forEach((element) => {
      console.log(element)
      click4.push(1)
    });
    console.log(click4)
  }
}
