import { Controller } from "stimulus"
import hljs from "highlight"

export default class extends Controller {
  
  connect() {
    this.element.querySelectorAll('pre').forEach(function(pre) {
      hljs.highlightBlock(pre)
    })
  }
  
}
