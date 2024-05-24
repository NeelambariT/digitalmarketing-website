const form=document.querySelector('#form')
const username=document.querySelector('#username');
const email=document.querySelector('#email');
const password=document.querySelector('#password');
const cpassword=document.querySelector('#cpassword');

form.addEventListener('submit',(e)=>{
e.preventDefault();
validateInputs();
})
function validateInputs(){
const usernameVal=username.value.trim();
const emailVal=email.value.trim();
const passwordVal=password.value.trim();
const cpasswordVal=cpassword.value.trim();
if(usernameVal===''){
setError(username,'Username is required')
}
else{
setSuccess(username)
}
if(emailVal===''){
setError(email,'Email is required')
}
else if(!validateEmail(emailVal)){
setError(email,'please enter a valid email')
}
else{
setSuccess(email)
}
if (passwordVal===''){
setError(password,'password is required')
}
else if(passwordVal.length<8){
setError(password,'password should be atleast 8 character')
}
else{
setSuccess(password)}
if(cpasswordVal!==passwordVal){
setError(cpassword,'password and confrimpassword must be same')
}
else{
setSuccess(cpassword);
}
}

function SetError(element,message){
const inputgroup=element.parentElement;
const errorElement=inputgroup.querySelector('.error')

errorElement.ELement=message;
inputgroup.classList.add('error')
inputgroup.classList.add('success')

function SetSuccess(element){
const inputgroup=element.parentElement;
const errorElement=inputgroup.querySelector('.error')

errorElement.innerText='';
inputgroup.classList.add('success')
inputgroup.classList.add('error')
}
const validateEmail=(email)=>{
return String(email)
.toLowerCase()
.match(/^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    );
};

}