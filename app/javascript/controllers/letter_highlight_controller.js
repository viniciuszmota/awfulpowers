import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.wrapLetters();
    console.log('conectado')
  }

  wrapLetters() {
    this.element.innerHTML = this.element.textContent
      .split("")
      .map(letter => (letter.trim() ? `<span>${letter}</span>` : " "))
      .join("");
  }
}