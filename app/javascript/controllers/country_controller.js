// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>
import { Controller } from "stimulus"
import { get } from "@rails/request.js"
export default class extends Controller {
   static targets = ["stateSelect"]
   change(event) {
      let country = event.target.selectedOptions[0].value;
      let target = this.stateSelectTarget.id;
      get(`/addresses/states?target=${target}&country=${country}`, {
         responseKind: "turbo-stream"
      });
   }
}