# Ti.AttributedLabel Module

## Description

Gives you the power of 'basic' HTML and CSS without the weight of a WebView.

Using the attribuited property of UILabel from iOS 6 & up to render basic HTML content in a label

## Accessing the AttributedLabel Module

To access this module from JavaScript, you would do the following:

    var attributedlabel = require("ti.attributedlabel");

The attributedlabel variable is a reference to the Module object.

## Reference

TODO: If your module has an API, you should document
the reference here.

### attributedlabel.createLabel
Creates and returns the label. Initail properties below
html: advised
width: required
height: required

### attributedlabel.html
Sets the html for the label

## Usage

// require the well ahead in your project, preferably globally in your controller or alloy
var module = require('ti.attributedlabel');

// Use it as required
var foo = module.createLabel({
    		html:'Here's a styled label, now to next line<br/>Examples include(Note:This list is not exhaustive):<ul><li>Creating many points in a simple label</li><li>Another point</ul><br/><ul><li>Yet another</li></ul>',
  			width: Ti.UI.FILL,
  			height: Ti.UI.SIZE,
            // There is still a issue, where label is not shown when Ti.UI.SIZE is used for width and height, so we set a minimum height til we have a fix
  			minHeight: 350,
  			left: 10,
  			top: 20,
  			color:'black'
    });
    // adding to a sample page
    $.index.add(foo);


## Author

Raja Sekhar Chiderae,
rajatwork@ymail.com.

## License

General Public License 3.0 - http://www.gnu.org/licenses/gpl-3.0.txt
