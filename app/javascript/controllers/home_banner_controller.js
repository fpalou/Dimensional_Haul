import { Controller } from "@hotwired/stimulus"

const background = document.querySelector('.banner-style')
const button = document.querySelector('#banner-btn')

console.log(background);
console.log(button);

export default class extends Controller {
  connect() {
    // TODO: console.log something!
    console.log(this);
  }

  zoom() {
    console.log('zoom');
    // transform: scale(1.8);
    background.style.transform = 'scale(1.8)';
    document.querySelector('.home-info').style.marginTop = '200px'; // adjust this value as needed
    document.querySelector('.fadee').classList.add("fade-out");
    document.querySelector('.fadeee').classList.add("fade-out");
    setTimeout(() => {
      this.resetZoom();
    }, 3000);
  }
  resetZoom() {
    console.log('reset zoom');
    background.style.transform = 'scale(1)';
    // ponle un timer
    setTimeout(() => {
      document.querySelector('.home-info').style.marginTop = '0px';
      document.querySelector('.fadee').classList.remove("fade-out");
      document.querySelector('.fadeee').classList.remove("fade-out");

    }, 1000);

  }
}
