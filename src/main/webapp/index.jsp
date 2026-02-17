<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Moumita's Dance Studio</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<style>
*{margin:0;padding:0;box-sizing:border-box;}

body{
font-family:'Poppins',sans-serif;
background:linear-gradient(135deg,#0f0c29,#302b63,#24243e);
color:#fff;
scroll-behavior:smooth;
}

/* HEADER */
header{
position:fixed;
width:100%;
top:0;
background:rgba(0,0,0,0.6);
backdrop-filter:blur(10px);
padding:15px;
text-align:center;
z-index:1000;
}

nav a{
color:#fff;
margin:0 15px;
text-decoration:none;
transition:0.3s;
}

nav a:hover{color:#ff4ecd;}

.hero{
height:100vh;
background:url('https://images.unsplash.com/photo-1508704019882-f9cf40e475b4') no-repeat center/cover;
display:flex;
align-items:center;
justify-content:center;
text-align:center;
}

.hero h2{
font-size:3rem;
background:rgba(0,0,0,0.6);
padding:20px 40px;
border-radius:15px;
}

section{
padding:100px 20px;
max-width:1000px;
margin:auto;
}

.card{
background:rgba(255,255,255,0.05);
padding:30px;
border-radius:20px;
backdrop-filter:blur(10px);
box-shadow:0 0 25px rgba(255,78,205,0.3);
margin-bottom:40px;
}

h3{color:#ff4ecd;margin-bottom:20px;}

iframe{
width:100%;
height:400px;
border-radius:15px;
margin-top:20px;
}

/* FORM */
form input, form select{
width:100%;
padding:12px;
margin:10px 0;
border:none;
border-radius:10px;
outline:none;
}

form button{
background:#ff4ecd;
color:#fff;
padding:12px;
border:none;
border-radius:10px;
width:100%;
cursor:pointer;
font-weight:600;
margin-top:10px;
}

form button:hover{background:#ff1ebc;}

.payment-btn{
background:#00c853;
}

.payment-btn:hover{background:#00a843;}

/* WHATSAPP FLOAT */
.whatsapp-float{
position:fixed;
bottom:20px;
right:20px;
background:#25D366;
color:#fff;
width:60px;
height:60px;
border-radius:50%;
text-align:center;
font-size:28px;
line-height:60px;
box-shadow:0 0 15px rgba(0,0,0,0.5);
z-index:100;
}

footer{
text-align:center;
padding:20px;
background:rgba(0,0,0,0.8);
}
</style>
</head>

<body>

<header>
<h1>Moumita's Dance Studio</h1>
<nav>
<a href="#videos">Performances</a>
<a href="#register">Register</a>
<a href="#contact">Contact</a>
</nav>
</header>

<div class="hero">
<h2>Discover the Art of Dance</h2>
</div>

<!-- VIDEOS SECTION (OLD ONES RESTORED) -->
<section id="videos">
<div class="card">
<h3>Bollywood Solo Performance</h3>
<iframe src="https://www.youtube.com/embed/Os027O67LdU" allowfullscreen></iframe>
</div>

<div class="card">
<h3>Classical Dance Performance</h3>
<iframe src="https://www.youtube.com/embed/JfD08rXMpRU" allowfullscreen></iframe>
</div>
</section>

<!-- REGISTRATION -->
<section id="register">
<div class="card">
<h3>Student Registration</h3>

<form id="danceForm">
<input type="text" name="name" placeholder="Full Name" required>
<input type="email" name="email" placeholder="Email Address" required>
<input type="tel" name="phone" placeholder="Phone Number" required>

<select name="style" required>
<option value="">Select Dance Style</option>
<option>Classical</option>
<option>Semi-Classical</option>
<option>Bollywood</option>
<option>Kathak</option>
<option>Couple Dance</option>
</select>

<button type="submit">Submit Registration</button>
</form>

<button class="payment-btn" onclick="payNow()">💳 Pay ₹2000 via Razorpay</button>

<div style="margin-top:30px;text-align:center;">
<h3>Scan & Pay via UPI</h3>
<img src="upi-qr.png" alt="UPI QR" style="width:250px;border-radius:15px;">
<p>After payment, complete registration form.</p>
</div>

</div>
</section>

<!-- CONTACT -->
<section id="contact">
<div class="card">
<h3>Contact</h3>
<p>Email: moumita9639@gmail.com</p>
<p>Phone: 6289286871</p>
<p>Location: Vadodara, Gujarat</p>
</div>
</section>

<footer>
© 2026 Moumita's Dance Studio | Designed with ❤️
</footer>

<!-- WHATSAPP -->
<a href="https://wa.me/916289286871" class="whatsapp-float" target="_blank">💬</a>

<!-- EMAILJS -->
<script>
(function(){
emailjs.init("YOUR_PUBLIC_KEY");
})();

document.getElementById("danceForm").addEventListener("submit",function(e){
e.preventDefault();

emailjs.sendForm("YOUR_SERVICE_ID","YOUR_TEMPLATE_ID",this)
.then(function(){
alert("Registration Successful! Confirmation Email Sent 🎉");
})
.catch(function(){
alert("Email failed. Check configuration.");
});

this.reset();
});
</script>

<!-- RAZORPAY -->
<script>
function payNow(){
var options={
"key":"YOUR_RAZORPAY_KEY",
"amount":"200000",
"currency":"INR",
"name":"Moumita's Dance Studio",
"description":"Dance Class Fees",
"handler":function(response){
alert("Payment Successful! ID: "+response.razorpay_payment_id);
}
};
var rzp=new Razorpay(options);
rzp.open();
}
</script>

</body>
</html>
