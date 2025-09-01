# codepath-prework-IOS
codepath prework project Introduce Yourself
We want to set up a UI that prompts users to input information about themselves. We'll need to provide the following:
First name
 Close Section
 Last name
School name
Academic year
Number of pets
Wants more pets?
Image of the school logo
Button to generate an introduction
After adding the essential elements, we need to appropriately name them so that users know what corresponds each element. We can do this through the attributes inspector on the far right panel. Click on the element that needs changing, either by directly clicking it or clicking on its name on the View Controller Scene. See the example below.
After appropriately naming all of your new items, the view controller should look like the one shown below.

There should be:
First label
Edit text for filling out the first name
Last label
Edit text for filling out the last name
School label
Edit text for filling out the school name
A segmented control for the academic year
Number of pets label
Wants more pets? Switch
A stepper to choose how many more
Image of the school logo
Button to generate an introduction

Before connecting the Storyboard elements to the view controller, let's add the school logo to our assets folder. This is as simple as choosing the image you'd like to use and dragging it into your assets folder on Xcode. Then, click on your image view's attributes inspector to assign it the picture in your asset folder.

We need to connect our items to our code in the ViewController.swift file. To connect the UI elements to your ViewController, press and hold the control key (also called control-dragging) from the item in the Storyboard and move the mouse cursor to the swift file under the viewDidLoad() function. See the gif below on control-dragging.

First, we will connect the three IBOutlets that can be added anywhere on your ViewController.swift class as shown below.

Next, we create outlets for the number of pets label, which is originally set to 0, but will change based on the stepper amount. Additionally, we'll need a label for the stepper, the switch, and our segmented control.

he last thing we need to do is create a couple of actions. The first one will be when the stepper is pressed (up or down), we need to update the number of additions pets by 1, and when the Introduce Self button is tapped, we want to present the app below. We do this through IBActions. Note: The stepper is both an Outlet (because it provides the user info it needs), and an Action because it is responsible for triggering an update in the app.

Checking Your Outlets
Make sure that your outlets are connected to your view controller by tapping the top right button above the view controller, and showing the Connections Inspector on the far right panel.

Let us start by allowing our stepper to update the number of pets label. When we created the action, we left the sender as Any, let's update that to UIStepper as shown below. We'll also assign the numberOfPetsLabel to be adjusted by the number of clicks on the stepper. Don't worry if the Swift syntax is not obvious yet, you will pick it up with time. Here we are just retrieving a property from the sender, which is initially a double, cast into an Int, and wrapping our Int in a string for our label.

Now we want to generate our introduction when the information is provided to our app. This will first be shown as a print statement to ensure that the app works as intended. We'll start by updating the sender from Any to UIButton.

Step 3: Creating the Alert Box





