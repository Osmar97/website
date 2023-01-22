<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Email</title>
</head>

    <body style="
        margin: 0;
        padding: 0;
    ">
    
        <section style ="padding: 50px;
            font-size: 14px;
            background-color: #ccc;">

            <div style="display: flex;
            justify-content: space-between;
            height: 60px;">

                <h1 style="text-align: center;"> {{ $details["title"] }}</h1>
            
            </div>


            <p style="margin-top: 20px;
            text-align: justify ;">

                {{ $details["subject"] }}
                
            </p>

        </section>
        
        <footer style="background-color: rgb(30,30,30);
            padding: 10px;
            color: white;
            padding-left: 50px;">
            <p>
                <b>Sent by:</b> <span style="color: #ffc400;">{{ $details["name"] }}</span> 
            </p>
            <p>
                <b>Sent by Phone Number:</b> <span style="color: #ffc400;">{{ $details["phoneNumber"] }}</span> 
            </p>
            <p>
                <b>Sent by Email:</b> <span style="text-decoration:none;color:#ffc400;">{{$details["email"] }}</span> </b> 
            </p>

        </footer>

    </body>

</html>