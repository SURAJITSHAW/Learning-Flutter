# Widget
Everything is basically a Widget in flutter and Widgets are basically Classes. The Layout we madde with flutter is represent as a Widget tree.

- Every Widget starts with a capital letter, and every individual word in it.
- Every properteis should separate with a comma (very essential).
- We can't just nested any value inside a Widget directly, had do with child properteis, i.e. Center( child: Text('centerd text), )

# Stateless vs. Stateful
- Stateless Widgets: the state of the widget `cannot change` over time. 
- Stateful Widgets: the state of the widget `can change` over time.


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

- Adding Custom Fonts: Download Font -> Move the all `.ttf` file inside a file in root dir of the project -> adding those configuration `pubspec.yml` file -> use 



> Hot Reload doesn't working with Auto Save option.

# Images & Assets
- Images from Internet: Image.network(url) or Image(image: NetworkImage(url))
- Downloaded Images: Image.asset() or Image(image: AssetImage(url)). But here had to do one extra step to add image containing folder to pubspec.yaml.

# Buttons & Icons
- 2 types of button: 
    - ElevatedButton()
    - TextButton()
- Styling of Buttons: style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>. In the style: prop that has MaterialStateProprtty class.
''' ElevatedButton(onPressed: () {}, child: const Text('Click Me'), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),
'''

'''
child: Icon(
        Icons.airport_shuttle,
        color: Colors.lightBlue,
        size: 50.0,
      ),
'''

- TextButton.icon(...)

     TextButton.icon(
              onPressed: (() {}),
              icon: const Icon(Icons.edit_location),
              label: const Text('Edit Location'))


# Containers & Padding
- Container() Widget is the most useful and easy to understand Widget provide by Flutter SDK. It also works like a wrapper class for layout Widgets and can also specify PADDING & MARGIN.
- If any `child` isn't specified within container, it'll take the whole available area. 
- If the child is present, it'll restrict itself to the child Widget.
- You can add Padding by simply, add `padding:` inside Container() Widget.

'''
 Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0), // apply accordingly to horizontal & vertical value
        Or, 
        padding: const EdgeInsets.all(20.0), // apply the same value for all side
        Or,
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0), // left, top, rigtht, bottom

        color: Colors.grey[400],
        child: const Text('hello'),
      )
'''
- Margin also works same as padding.
'''
margin: const EdgeInsets.all(100.0),
'''
- If you just want to add padding to value, can use Padding Widget itself (but you can't use margin, color or diff props)

# Rows
- So far we adding one Widget at a time on the `body:` of our app. Now with the help of Rows & Columns we can have multiple Widgets in our Layout at sametime.
- Row() is a Widget which can contain several other Widgets inside it. Since we can have multiple Widgets inside id, instead of a `child:` prop Row() has a `chidren:` prop(which is essentially List of <Widgets>). Here Row containing 3 other Widgets inside it:
'''
 Row(
        children: [
          const Text('Hello World!'),
          ElevatedButton(onPressed: () {}, child: const Text('Click Me'), style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlue)),),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),  
            child: const Text('inside a container'),
            color: Colors.amber,  
          ),
        ],
      )
'''

- Horizontal Axis == Main Axis, Vertical Axis == Cross Axis. You can add space b/w `Widgets` inside the `Row()`.
'''
Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly, // .start is default
        crossAxisAlignment: CrossAxisAlignment.start, // .center is default

        children: <Widget>[]
    )
''' 

# Columns
- Columns are same as Rows but the stack Widgets from top to bottom.
- Also in Columns Main Axis is the Vertical one.

> Can put Row() inside a Column() Widget and vice-verca.

## Shortcuts & Outline
- Click on the Widget() have a little yellow light, click on it having multiple shortcut options to manipulate your Widgets()

# Expanded Widgets
- Creates a widget that expands a child of a [Row], [Column], or [Flex] so that the child fills the available space along the flex widget's main axis.
    Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text('One'),
              color: Colors.cyan,
            ),
          ),
        ]
    )

- With Expanded Widget we can specify the behaviour of child: Image Widget in our Layouts.

# SizedBox() Widget
- Basically gonna create a empty box with height and width according to our needs. Props: height, width.

# CircleAvatar()
- Creates a circle that represents a user.

# Divider
- Creates a material design divider.

# Stateful Widget
- Here data can be changed over a time period. 
- When working with Stateful Widgets, had to keep one thing mind you can't change the state directly. If you do the change will not gonna to reflect on Layout.
- Had to put the changes logic/code inside setState funct (just like ReactJS).
  
  floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          gfCounts += 1;
        });
      },

# Lists of Data
- children  only accepts List, that's why with `.toList()` change this text iterable to a List.
- qoutes.map() will return an Iterable. map() works exactly same as JS.

    body: Column(
        children: qoutes.map((qoute) => Text(qoute)).toList(),
      ),

# SafeArea() 
- Creates a widget that avoids operating system interfaces.
# Maps & Routing
- Maps are just key-value pair.
- Use Map data structure for routing.

    MaterialApp(
    home: Home(), // set home: Home; also set default route '/' set to Loading. This will create conflicts b/w this two.
    routes: {
      '/': (context) => Loading(),
      '/home':(context) => Home(),
      '/location':(context) => Location(),

    },
  )

- By default '/' is the first route that gonna fire when we opened our application. 'home:' prop also works exactly like same. So basically we give two Widgets (Home, Loading) fire at the same time, this will create a conflict.

## Navigtor
- A widget that manages a set of child widgets with a stack discipline.
- `Navigator.pushNamed(context, RouteName)` pushNamed() is just a funct which will take 2 arguments. This funct called pushNamed cause it essentially pushs the Route provided push on top of older route.


## Changing by default loading path
- For our app Loading() is intial widget that gonna fire, but for testing purposes we want our default path change to Home(). For overwriting by default path we are gonna using `intialRoute: '/home',`.