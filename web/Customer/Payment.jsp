<%--
    Document   : Payment
    Created on : 4 Dec, 2021, 12:26:47 PM
    Author     : robin
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
    <!DOCTYPE html>
    <%@include file="SessionValidator.jsp" %>
    <html lang="en" >
        <head>
            <meta charset="UTF-8">
            <title>Payment Gateway</title>
            <link rel="stylesheet" href="./style.css">
            <style>
                @import url('https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Ubuntu');

                *{
                    margin: 0;
                    padding: 0;
                    box-sizing: border-box;
                    font-family: 'Ubuntu', sans-serif;
                }

                body{
                    background: #2196F3;
                    margin: 0 10px;
                }

                .payment{
                    background: #f8f8f8;
                    max-width: 360px;
                    margin: 80px auto;
                    height: auto;
                    padding: 35px;
                    padding-top: 70px;
                    border-radius: 5px;
                    position: relative;
                }

                .payment h2{
                    text-align: center;
                    letter-spacing: 2px;
                    margin-bottom: 40px;
                    color: #0d3c61;
                }

                .form .label{
                    display: block;
                    color: #555555;
                    margin-bottom: 6px;
                }

                .input{
                    padding: 13px 0px 13px 25px;
                    width: 100%;
                    text-align: center;
                    border: 2px solid #dddddd;
                    border-radius: 5px;
                    letter-spacing: 1px;
                    word-spacing: 3px;
                    outline: none;
                    font-size: 16px;
                    color: #555555;
                }

                .card-grp{
                    display: flex;
                    justify-content: space-between;
                }

                .card-item{
                    width: 48%;
                }

                .space{
                    margin-bottom: 20px;
                }

                .icon-relative{
                    position: relative;
                }

                .icon-relative .fas,
                .icon-relative .far{
                    position: absolute;
                    bottom: 12px;
                    left: 15px;
                    font-size: 20px;
                    color: #555555;
                }

                .btn{
                    margin-top: 40px;
                    background: #2196F3;
                    padding: 12px;
                    text-align: center;
                    color: #f8f8f8;
                    border-radius: 5px;
                    cursor: pointer;
                }


                .payment-logo{
                    position: absolute;
                    top: -50px;
                    left: 50%;
                    transform: translateX(-50%);
                    width: 100px;
                    height: 100px;
                    background: #f8f8f8;
                    border-radius: 50%;
                    box-shadow: 0 0 5px rgba(0,0,0,0.2);
                    text-align: center;
                    line-height: 85px;
                }

                .payment-logo:before{
                    content: "";
                    position: absolute;
                    top: 5px;
                    left: 5px;
                    width: 90px;
                    height: 90px;
                    background: #2196F3;
                    border-radius: 50%;
                }

                .payment-logo p{
                    position: relative;
                    color: #f8f8f8;
                    font-family: 'Baloo Bhaijaan', cursive;
                    font-size: 58px;
                }

                input[type=submit] {
                    background-color: #2196F3;
                    border: none;
                    color: #f8f8f8;
                    font-size: 16px;
                }

                @media screen and (max-width: 420px){
                    .card-grp{
                        flex-direction: column;
                    }
                    .card-item{
                        width: 100%;
                        margin-bottom: 20px;
                    }
                    .btn{
                        margin-top: 20px;
                    }
                }
            </style>
        </head>
    <%
        if (request.getParameter("btnpay") != null) {
            String up = "update tbl_booking set booking_status='3' where booking_id='" + request.getParameter("bid") + "'";
            if (con.executeCommand(up)) {
    %>
    <script type="text/javascript">
        alert("Payment Completed");
        setTimeout(function() {
            window.location.href = 'MyBooking.jsp'
        }, 100);
    </script>
    <%
            }
        }

    %>
    <body>
        <!-- partial:index.partial.html -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">

        <div class="wrapper">
            <div class="payment">
                <div class="payment-logo">
                    <p>p</p>
                </div>
                <h2>Payment Gateway</h2>
                <div class="form">
                    <form method="post">
                        <div class="card space icon-relative">
                            <label class="label">Card holder:</label>
                            <input type="text" class="input" id="txt_name" pattern="^[A-Z]+[a-zA-Z ]*$" pattern="Enter A Valid Name" placeholder="Card Holder" >
                            <i class="fas fa-user"></i>
                        </div>
                        <div class="card space icon-relative">
                            <label class="label">Card number:</label>
                            <input type="text" class="input" data-mask="0000 0000 0000 0000" id="credit-card" placeholder="Card Number">
                            <i class="far fa-credit-card"></i>
                        </div>
                        <div class="card-grp space">
                            <div class="card-item icon-relative">
                                <label class="label">Expiry date:</label>
                                <input type="text" name="expiry-data" class="input"id="credit-card-exp" data-mask="00 / 00" placeholder="00 / 00">
                                <i class="far fa-calendar-alt"></i>
                            </div>
                            <div class="card-item icon-relative">
                                <label class="label">CVV:</label>
                                <input type="text" class="input" data-mask="000" id="credit-card-ccv" placeholder="000">
                                <i class="fas fa-lock"></i>
                            </div>
                        </div>
                        <div class="btn">
                            <input type="submit" name="btnpay" id="btnpay" value="Pay">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- partial -->
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js'></script><script  src="./script.js"></script>
        <script>
             document.addEventListener("DOMContentLoaded", function () {
        const creditCardInput = document.getElementById("credit-card");
        const creditCardExp = document.getElementById("credit-card-exp");
        const creditCardCcv = document.getElementById("credit-card-ccv");

        creditCardInput.addEventListener("input", function () {
            const inputValue = this.value.replace(/\D/g, ''); // Remove all non-digits
            const formattedValue = formatCreditCard(inputValue);
            this.value = formattedValue;
        });

        creditCardExp.addEventListener("input", function () {
            const inputValue = this.value.replace(/\D/g, ''); // Remove all non-digits
            const formattedValue = formatExpirationDate(inputValue);
            this.value = formattedValue;
        });

        // Function to validate expiration date
        function validateExpirationDate(inputValue) {
            const month = inputValue.slice(0, 2); // Extract month (assuming format MMYY)
            const year = inputValue.slice(2, 4); // Extract year (assuming format MMYY)

            // Get current date
            const currentDate = new Date();
            const currentYear = currentDate.getFullYear() % 100; // Get last two digits of current year
            const currentMonth = currentDate.getMonth() + 1; // getMonth() returns 0-11, so add 1

            // Validate month is between 1 and 12
            const isValidMonth = /^\d{2}$/.test(month) && parseInt(month, 10) >= 1 && parseInt(month, 10) <= 12;

            // Validate year is equal to or greater than current year
            const isValidYear = /^\d{2}$/.test(year) && parseInt(year, 10) >= currentYear;

            let isValidDate = false;

            if (isValidMonth && isValidYear) {
                const expYear = parseInt(year, 10);
                const expMonth = parseInt(month, 10);

                if (expYear > currentYear || (expYear === currentYear && expMonth >= currentMonth)) {
                    isValidDate = true;
                }
            }

            if (!isValidDate) {
                // Handle invalid input (e.g., show error message, disable form submission)
                console.log('Invalid expiration date');
                alert('Invalid expiration date');
                document.getElementById("credit-card-exp").value = '';
                // Optionally, you can clear the input field or show an error message
                // creditCardExp.value = '';
            }
        }


        // Event listener for onchange
        creditCardExp.addEventListener("change", function () {
            const inputValue = this.value.replace(/\D/g, ''); // Remove all non-digits
            validateExpirationDate(inputValue);
        });


        creditCardCcv.addEventListener("input", function () {
            const inputValue = this.value.replace(/\D/g, ''); // Remove all non-digits
            const formattedValue = formatCVV(inputValue);
            this.value = formattedValue;
        });
    });

    function formatCreditCard(value) {
        const groups = value.match(/(\d{1,4})/g) || [];
        return groups.join(' ');
    }

    function formatExpirationDate(value) {
        const groups = value.match(/(\d{1,2})/g) || [];
        return groups.join('/').slice(0, 5);
    }

    function formatCVV(value) {
        return value.slice(0, 3);
    }
        </script>
    </body>
</html>