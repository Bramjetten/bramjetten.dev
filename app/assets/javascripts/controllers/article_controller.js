import { Controller } from "stimulus"
import microlight from 'https://cdn.skypack.dev/microlight'

export default class extends Controller {
  
  connect() {
    this.element.querySelectorAll('pre').forEach(function(pre) {
      pre.classList.add('microlight')
    })
    
    microlight.reset()
  }
  
}
