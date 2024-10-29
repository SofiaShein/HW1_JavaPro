<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Form</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
<div class="form-container">
    <h1>Survey Form</h1>
    <form action="/userResponses" method="POST">
        <div class="form__wrap">
            <label for="name"><span class="required">*</span> Name: </label>
            <input type="text" id="name" name="name" placeholder="Enter your name" required>
        </div>
        <div class="form__wrap">
            <label for="lastname"><span class="required">*</span> Lastname: </label>
            <input type="text" id="lastname" name="lastname" placeholder="Enter your lastname" required>
        </div>
        <div class="form__wrap">
            <label for="age"><span class="required">*</span> Age: </label>
            <input type="text" id="age" name="age" placeholder="Enter your age" required>
        </div>
        <div class="form__wrap">
            <label for="color"><span class="required">*</span> Your favorite color: </label>
            <input type="text" id="color" name="color" placeholder="Enter your favorite color" required>
        </div>
        <div class="form__wrap">
            <label for="country"><span class="required">*</span> What country do you live in?: </label>
            <input type="text" id="country" name="country" placeholder="Enter your country" required>
        </div>
        <input type="submit" class="submit-button" value="Submit">
    </form>
</div>
</body>
</html>
