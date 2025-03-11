import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["column"];

  connect() {
    this.resetColumns();
  }

  resetColumns() {
    this.columnTargets.forEach((column) => {
      column.style.transform = "translateY(0)";
    });
  }

  startAnimation(event) {
    const column = event.currentTarget;
    column.classList.add("moving");
  }

  stopAnimation(event) {
    const column = event.currentTarget;
    column.classList.remove("moving");
  }
}