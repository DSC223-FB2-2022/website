# slides

Source code for the later slides of Data Science in a Box by Dr. Mine Çetinkaya-Rundel

Modified and Presented here by Dr. Tyler George

## Using the slides

The slides can either be used as is, or put together in a modular way for longer lectures. For example, if you have a 2 hour class session you may choose to combine some smaller slide decks so there is one set of slides for the class session. 


### Using the slide decks 1 at a time
- To avoid individual slide deck rendering by Quarto, a "_" has been added before each file title. In order to have Quarto render these when you publish, simply remove the "_" from the slide title name. You can now make your own edits and use the slides. 
- Make sure to reference Data Science in a Box and the author Dr. Çetinkaya-Rundel

### Making your own slide decks
Use the file `_template_presentation.qmd` to make your own combined slide decks. 
- Open `_template_presentation.qmd`
- Re-save it with a new title name and make sure you do not have "_" at the start of the name if you want Quarto to render the file. 
- Add any number of include statements like shown, changing the file names to be the slide decks you want combined. 