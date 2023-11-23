import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  

  connect() {

    console.log("Element", this.element)
    
    if (this.data.get("disable")) {
      console.log("disable")
      flatpickr(this.element, {
        mode: "range",
        minDate: "today",
        disable: JSON.parse(this.data.get("disable"))
        // inli]ne: true
      });
    }
    else{
      flatpickr(this.element, {
        mode: "range",
        minDate: "today",
        // inli]ne: true
      });
    }
  }
}
