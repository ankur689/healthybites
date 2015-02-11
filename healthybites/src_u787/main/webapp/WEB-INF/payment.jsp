<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>


function a(){
if(chn()){
if(exp()){
if(crn()){
if(cvvn()){


return true;
}}}}
return false;
}


function chn()
{
if(creditcardform.name1.value=="")
{
alert("Enter Card Holder Name ");
creditcardform.name1.focus();
return false;
}
else if(!(isNaN(creditcardform.name1.value)))
{
alert("Enter only character string for Card Holder Name ");
return false;
}
else
{

return true;

}
}



function crn()
{
if(creditcardform.user.value=="")
{
alert("Enter Credit Card number");
creditcardform.user.focus();
return false;

}
else if((isNaN(creditcardform.user.value)))
{
alert("Enter digits for card number ");
return false;}

else if(creditcardform.user.value.length<16)
{
alert("Enter correct card number of 16 Digits");
return false;
}
else if(creditcardform.user.value.length>16)
{
alert("Enter correct card number of 16 Digits");
return false;
}

else
{
return true;
}
}
function cvvn()
{
if(creditcardform.cvv.value=="")
{
alert("Enter CVV number");
creditcardform.cvv.focus();
return false;

}
else if((isNaN(creditcardform.cvv.value)))
{
alert("Enter digits for CVV ");
return false;}

else if(creditcardform.cvv.value<3)
{
alert("Enter CVV number of 3 Digits");
return false;
}
else if(creditcardform.cvv.value.length>3)
{
alert("Enter CVVnumber of 3 Digits");
return false;
}

else
{
return true;
}
}



function exp()
{
if(creditcardform.month.value=="")
{
alert("Enter Expiry Date month");
creditcardform.expdate.focus();
return false;
}

if(creditcardform.year.value=="")
{
alert("Enter Expiry Date year");
creditcardform.expdate.focus();
return false;
}

else
{

return true;

}
}

</script>  <style type="text/css">
body {
background-color: #000;

}


* {
margin: 0;
padding: 0;
}



ul {
list-style-type: none;
background-image: url('http://puma.io/images/logos/downloads/standard-logo.png');

height: 80px;
width: 850px;
margin: auto;
}


li {
  float: left;
}


ul a {
background-image: url('http://puma.io/images/logos/downloads/standard-logo.png');
background-repeat: no-repeat;
background-position: right;
padding-right: 32px;
padding-left: 32px;
display: block;
line-height: 80px;
text-decoration: none;
font-family: Georgia, "Times New Roman", Times, serif;
font-size: 21px;
color: #371C1C;
}

ul a:hover {
color: #FFF;
}

    * {
    margin: 0;
    }
    html, body {
    height: 100%;
    }
    .wrapper {
    min-height: 100%;
    height: auto !important;
    height: 100%;
    margin: 0 auto -4em;
    }
    .footer, .push {
    height: 4em;
    }  </style>
 </head>
 <body text="#FFFFFF">
  <div align="center">
   <p>
   <img alt="" height="212" src="" width="1260" /></p>
  </div>
  <p>
   &nbsp;</p>
  <ul>
   <ul>
   <li>
    <a href="http://localhost:8080/letsbuy/">Home</a></li>
    <li>
    <a href="http://localhost:8080/letsbuy/pumaHome">Puma Home</a></li>
   
   <li>
    <a href="#">T-Shirts</a></li>
   
   <li>
    <a href="#">Watches</a></li>
   <li>
   <li>

    <a href="#" style="background-image: none;">Contact</a></li>
  </ul>
  <p>
   &nbsp;</p>
  <p>
   &nbsp;</p>
  <p>
   &nbsp;</p>
  <p>
   &nbsp;</p>
  <h1 align="center">
   Payment Gateway</h1>
  <div id="navbar1">
   &nbsp;</div>
  <br />
  <br />
  <br />
  <form id="creditcardform"  method="POST" action="success" onsubmit="return a()">
   <center>
    <table style="height: 50%;font-size:30px" width="900">
     <tbody>
      <tr>
       <td>
        Customer Name</td>
       <td>
        <input font-size:="white" name="name1" size="30" type="text" /></td>
      </tr>
      <tr>
      </tr>
      <tr>
       <td>
        <font color="white">Card Type</font></td>
       <td>
        <select name="typeofcard"><option value="id1">Master</option><option value="id2">Debit</option><option value="id3">Credit</option></select></td>
      </tr>
      <tr>
       <td>
        <font color="white">Card Expiry</font></td>
       <td>
        <font color="white">Months <select name="month"><option value="Jan">January</option><option value="Feb">February</option><option value="Mar">March</option><option value="Apr">April</option><option value="May">May</option><option value="Jun">June</option><option value="Jul">July</option><option value="Aug">August</option><option value="Sep">September</option><option value="Oct">October</option><option value="Nov">November</option><option value="Dec">December</option></select> <font color="white">Years <select name="year"><option value="2013">2013</option><option value="2014">2014</option><option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2029</option><option value="2029">2029</option><option value="2030">2030</option></select> </font></font></td>
      </tr>
      <tr>
       <td>
        <font color="white">Card Number</font></td>
       <td>
        <input maxlength="16" name="user" size="16" type="text" /></td>
      </tr>
      <tr>
       <td>
        <font color="white">CVV Number</font></td>
       <td>
        <input maxlength="3" name="cvv" size="3" type="text" /></td>
      </tr>
      <tr>
       <td>
        &nbsp;</td>
       <td>
       
        <input class="submit" form="creditcardform" type="submit" value="Confirm" /></td>
       <td>
        &nbsp;</td>
      </tr>
     </tbody>
    </table>
   </center>
  </form>
 </body>
</html>
