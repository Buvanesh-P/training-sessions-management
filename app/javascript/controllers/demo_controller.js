import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="demo"
export default class extends Controller {
  static targets = ["params"]

  search(){
    console.log('yeah, its coming in s')
    console.log('params:',this.paramsTarget)
    const value = this.paramsTarget.value

    fetch('search?search='+value+'',{
      contentType: 'application/json',
      hearders: 'application/json'
    })
    .then((response)=> response.text())
    .then(res => {
      console.log('response:',res)
      document.getElementById("categories").innerHTML = res})
  }

}
