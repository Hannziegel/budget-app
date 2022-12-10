import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["menu"]

  initilize() {
    this.isOpen = true;
  }

  connect() {
    console.log("connected!");
    console.log(this.element);
  }

  menu() {
    console.log("You clicked here!");
    console.log(this.menuTarget);
    this.isOpen ? this.hide() : this.show();
    this.isOpen = !this.isOpen;
  }

  show() {
    this.menuTarget.style.display = "flex";
  }

  hide() {
    this.menuTarget.style.display = "none";
  }
}