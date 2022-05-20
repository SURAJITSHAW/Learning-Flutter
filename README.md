# Widget
Everything is basically a Widget in flutter and Widgets are basically Classes. The Layout we madde with flutter is represent as a Widget tree.

- Every Widget starts with a capital letter, and every individual word in it.
- Every properteis should separate with a comma (very essential).
- We can't just nested any value inside a Widget directly, had do with child properteis, i.e. Center( child: Text('centerd text), )


## MaterialApp() Widget
Is just a wrapper class, which provides a basic styling.

## Center Widget
Whatever nested inside this Widget is gonna be Centerd.

## Scaffold() Widget
It's basically a Wrapper class which contains imp Layout Widgets.
Is gonna help us to create a basic layout for our application, it's gonna allow us to set up a AppBar(), FloatingActionButton() and many more. 
- ### PreferredSizeWidget? appBar
    It's just upper section of the main body part, just like the `nav` section in the web app.
    This appBar: propertie value is also a Widget itself (AppBar()).
- ### Widget? body
    It's the Main section of the application.
- ### Widget? floatingActionButton
    A button displayed floating above [body], in the bottom right corner.


## Custom Styling 
- For adding custom colors to our layouts, we are using `Colors` object to acess the MaterialTheme color palate as Props, e.g. backgroundColor: Colors.red[400],
- Text() can style any text by adding `style` prop in Text() Widget after the string. Like this :   
        Text(
         'Hello folks!',
          style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0,
          color: Colors.grey[600],
        ),