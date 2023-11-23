import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element)
    flatpickr("[data-controller='datepicker']", {
      mode: "range",
      minDate: "today",
      disable: [
        function(date) {
            // return true to disable
            return (date.getDay() === );
    });
  }
}
