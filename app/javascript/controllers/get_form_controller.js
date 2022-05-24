import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["content"]

  connect() {
    console.log(this.contentTarget)
  }



  revealContent4(event) {
    let click3 = []
    const mensaje = document.getElementById("mensaje")
    event.preventDefault()
    this.contentTargets.forEach((element) => {
      click3.push(this.contentTarget)
    });
    // fetch
    // fetch(/section/{}).then((response) => {
    //   // Do something once HTTP response is received
    // })


    if (click3[0][0].checked === true && click3[0][3].checked === true && click3[0][7].checked === true) {
      alert("Aprobaste el modulo!")

      window.location.href='/sections/4'

    }
    else {
      alert("No aprobaste el modulo, vuelve a revisar el contenido")
      window.location.href='/sections/3'

    }
  }}
