<!-- Survey.jsp !-->
<!-- This page is the main page of the survey assignment --!>
<!-- No need for login or authentication, just add one for each selected option into the database --!>
<!-- This page is mostly HTML, processing is in add.jsp and result.jsp--!>

<!-- HTML FORM goes here !-->
<html>
<body>
<h1>POLL FOR MY WEBSITE</h1>
<form>
<p>What is your gender?<br>
  <input type="radio" name="gender" value="male" checked> Male<br>
  <input type="radio" name="gender" value="female"> Female<br>
</p>
</form>

<form>
<p>What do you think of this website?<br>
  <input type="radio" name="opinion" value="beautiful" checked> Beautiful<br>
  <input type="radio" name="opinion" value="average"> Average<br>
  <input type="radio" name="opinion" value="ugly"> Ugly<br>
</p>
</form>
</body>
</html>
<!-- Submit to add.jsp -->