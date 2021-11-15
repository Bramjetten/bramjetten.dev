import { Controller } from "@hotwired/stimulus"
import hljs from "libraries/highlight"

export default class extends Controller {
  
  connect() {
    this.element.querySelectorAll('pre').forEach(function(pre) {
      hljs.highlightBlock(pre)
    })
  }
  
}
