<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sample HTML Code - NewsLetter Form</title>
  <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");

    body {
      display: flex;
      justify-content: center;
      padding: 3rem 0;
      font-family: "Poppins", sans-serif;
      font-size: 1rem;
      color: white;
      background-color: #ff7a7a;
    }

    main {
      max-width: 350px;
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    .intro {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      text-align: center;
      width: 100%;
      margin-bottom: 3rem;
    }

    .title {
      padding: 1rem;
      font-size: 1.75rem;
    }

    .sign-up {
      width: 100%;
    }

    .sign-up-para {
      padding: 1rem 5rem;
      margin-bottom: 1.75rem;
      border-radius: 0.8rem;
      box-shadow: 0 8px 0px rgba(0 0 0/0.15);
      background-color: #7138cc;
      text-align: center;
    }

    .sign-up-form {
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 1.2rem;
      border-radius: 0.8rem;
      box-shadow: 0 8px 0px rgba(0 0 0/0.15);
      color: #b9b6d3;
      background-color: white;
    }

    .form-input {
      width: 100%;
      margin-bottom: 1em;
      position: relative;
    }

    .form-input span {
      position: absolute;
      top: 10%;
      right: 0;
      padding: 0 0.65em;
      border-radius: 50%;
      background-color: #ff7a7a;
      color: white;
      display: none;
    }

    .form-input.warning span {
      display: inline-block;
    }

    .form-input input {
      width: calc(100% - 20px);
      padding: 10px;
      border: 2px solid rgba(185, 182, 211, 0.25);
      border-radius: 0.5em;
      font-weight: 600;
      color: #3e3c49;
    }

    .form-input input:focus {
      outline: none;
      border: 2px solid #b9b6d3;
    }

    .form-input.warning input {
      border: 2px solid #ff7a7a;
    }

    .form-input p {
      margin: 0.2em 0.75em 0 0;
      display: none;
      font-size: 0.75rem;
      text-align: right;
      font-style: italic;
      color: #ff7a7a;
    }

    .form-input.warning p {
      display: block;
    }

    .submit-btn {
      cursor: pointer;
      width: 100%;
      padding: 1em;
      margin-bottom: 1em;
      border: none;
      border-bottom: 5px solid #31bf81;
      border-radius: 0.5em;
      background-color: #38cc8c;
      color: white;
      font-weight: 600;
      text-transform: uppercase;
    }

    .submit-btn:hover {
      background-color: #5dd5a1;
    }

    .form-term {
      margin-bottom: 0.75em;
      font-size: 0.8rem;
      text-align: center;
    }

    .form-term span {
      font-weight: 700;
      color: #ff7a7a;
    }
    
    @media (min-width: 768px) {
      body {
        align-items: center;
        min-height: 100vh;
      }

      main {
        max-width: 100vw;
        flex-direction: row;
        justify-content: center;
      }

      .intro {
        align-items: flex-start;
        text-align: left;
        width: 45%;
        margin-right: 1rem;
      }

      .title {
        padding: 0;
        margin-bottom: 2rem;
        font-size: 3rem;
        line-height: 1.25em;
      }

      .sign-up {
        width: 45%;
      }

      .sign-up-form {
        padding: 1.75rem;
      }

      .sign-up-form input {
        padding-left: 1.5em;
      }
    }
  </style>
</head>

<body>
  <main>
    <!-- intro section -->
    <section class="intro">
      <h1 class="title">Good Thrusday Deals</h1>
      <p>Hey Budy, You an earn more money by trading today. Hurry up, the offer of HERO/ZERO call will end at 3.30 pm.</p>
    </section>

    <!-- sign-up section -->
    <section class="sign-up">
      <p class="sign-up-para">Sign up for our newsletter and get 10% off your first purchase</p>
      <!-- the form itself -->
      <form class="sign-up-form">
        <div class="form-input">
          <input type="text" name="first-name" id="first-name" placeholder="First Name" required>
          <span>!</span>
          <p class="warning">First name cannot be empty</p>
        </div>

        <div class="form-input">
          <input type="text" name="last-name" id="last-name" placeholder="Last Name" required>
          <span>!</span>
          <p class="warning">Last name cannot be empty</p>
        </div>

        <div class="form-input">
          <input type="email" name="email" id="email" placeholder="Email Address" required>
          <span>!</span>
          <p class="warning">Looks like this is not an email</p>
        </div>

        <div class="form-input">
          <input type="Password" name="Password" id="Password" placeholder="Password" required>
          <span>!</span>
          <p class="warning">Password cannot be empty</p>
        </div>

        <input class="submit-btn" type="submit" value="Claim your offer">
        <p class="form-term">By clicking the button, you are agreeing to our <span>Terms and Services</span> </p>
      </form>
    </section>
  </main>
</body>

</html>
