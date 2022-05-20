###Widget
Everything is basically a Widget in flutter and Widgets are basically Classes. The Layout we madde with flutter is represent as a Widget tree.

-Every Widget starts with a capital letter, and every individual word in it.
-Every properteis should separate with a comma (very essential).


##MaterialApp() Widget
Is just a wrapper class, which provides a basic styling.

##Scaffold() Widget
Is gonna help us to create a basic layout for our application, it's gonna allow us to set up a AppBar(), FloatingActionButton() and many more. 

    #PreferredSizeWidget? appBar
    It's just upper section of the main body part, just like the 'nav' section in the web app.
    This appBar: propertie value is also a Widget itself (AppBar()).

    #Widget? body
    It's the Main section of the application.

    #Widget? floatingActionButton
    A button displayed floating above [body], in the bottom right corner.

##Center Widget
Whatever nested inside this Widget is gonna be Centerd.
