<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style.css">
<title>register</title>
<script type="text/javascript">
const form=document.querySelector('#form')
const username=document.querySelector('#username');
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
seterror(username,'Username is required')
}
else{
setsuccess(username)
}
}

function seterror(element,message){
const inputgroup=element.parentElement;
const errorElement=inputgroup.querySelector('.error')

errorElement.ELement=message;
inputgroup.classList.add('error')
inputgroup.classList.add('success')

function setsuccess(element){
const inputgroup=element.parentElement;
const errorElement=inputgroup.querySelector('.error')

errorElement.innerText='';
inputgroup.classList.add('success')
inputgroup.classList.add('error')
}
};

}
	}
</script>
</head>
<body>
<div class="container">
<form action="" id="form">
<h1> Register</h1>
<div class="inputgroup">
	<label for="username">username</label>
	<input type="text" id="username" name="username">
	<div class="seterror"></div> 
</div>
<input type= submit value='clickhere'onclick='validateInputs()'>
</form>
</div>


</body>
</html>