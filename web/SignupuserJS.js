/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



function validate() {
  with(document.signupuser) {
    if(name.value.length === 0) {
      alert("Please enter your full name");
      return;
    }
    if(username.value.length === 0) {
      alert("Please enter a username");
      return;
    }
    if(password.value.length === 0) {
      alert("Please enter a password");
      return;
    }
    if(password.value !== confirmPwd.value) {
      alert("The passwords do not match");
      return;
    }
    if(gender.value.length === 0) {
      alert("Please enter your gender");
      return;
    }
    if(age.value.length === 0) {
      alert("Please enter your age");
      return;
    }
    }
    submit();
  }