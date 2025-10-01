# Obstacle Course Game Creation Steps



### TODO 1: In Explorer: Create Game Models and Folders
- **Workspace**
    - **MODEL:** MainGame
        - **FOLDER:** Coins
        - **FOLDER:** Gates
        - **FOLDER:** Buttons
        - **FOLDER:** Stages
            - **Model:** Stage1
            - **Model:** Stage2
            - **Model:** Stage3


### TODO 2:In Explorer: Create all the parts needed for 1 Stage
- name each part Stage1
- **Part:** Gate
    - Anchor = true
    - Add to Gates folder
- **Part:** Button
    - Anchor = true
    - Instance Variables
        - **Touched:** BooleanValue, to check if the button is touched
            - Unchecked
        - **Duration:** IntValue, how long gate will be opened
            - add Value 10
    - Add to Buttons folder
- **Part:** Obstacle Course
    - Build Stairs
    - Add to Stages folder Model for stage 1