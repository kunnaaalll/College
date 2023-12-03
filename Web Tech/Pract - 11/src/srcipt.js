    function validateForm(){
    var txtFirstName = document.getElementById("fname");
    var firstname= txtFirstName.value;
    var txtPhoneNo = document.getElementById("PhoneNumber");
    var phoneNo= txtPhoneNo.value;
    var age1 = document.getElementById("age");
    var age2= age1.value;
    var pass1 = document.getElementById("pwd");
    var p1 =pass1.value;
    var pass2 = document.getElementById("cpwd");
    var p2=pass2.value;
    
    if(firstname == ""){
    alert("Name must be filled out"); 
    txtFirstName.focus(); 
    return false;
    }

    if(isNaN(phoneNo)){
    alert("Please enter only numberic data");
    txtPhoneNo.value= " ";
    txtPhoneNo.focus();
    return false;

    if (isNaN(age2) || age2 < 15 || age2 > 40){
    alert("Please enter age from 15 to 40");
    age1.value="";
     age1.focus();
    return false;
    }

    if(p1.length < 6){
    alert("**Password should be greater than 6 characters");
    pass1.value="";
    pass1.focus();
    return false;
    }

    if(p2!=p1){
    alert("Passwords did not match !");
    pass2.value="";
    pass2.focus();
    return false;
    }

    return true;
}