import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["menu"]
  
  connect() {
    console.log("ok")
    this.menuTarget.classList.add("hidden");
  }

  toggle() {
    this.menuTarget.classList.toggle("hidden");
    this.menuTarget.classList.toggle("show");    // Alterna a animação
  }

  close(event) {
    if (!this.element.contains(event.target)) {
      this.menuTarget.classList.add("hidden");
      this.menuTarget.classList.remove("show"); // Remove a animação ao esconder
    }
  }
}