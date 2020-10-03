# Presenting a Social Distancing SIR Model

This repository contains the code I used to create a presentation about the well-known SIR model and a modified SIR model that accounts for social distancing. 
The modified SIR model adds a "social distancing" term by multiplying the S-I transition rate by a penalty. Basically, as the number of infected and recovered individuals increases, the penalty will cause the S-I transition rate to decrease. Intuitively, individuals in the population will limit their interactions with others as the number of infected and recovered increases. 

Below is one of the images from the presentation. The orange line the original SIR model, the pink line is with moderate social distancing, and the green line is with extreme social distancing. We can see that more aggressive social distancing lowers the total percent of the population that becomes infected. 

<p align="center">
  <img src="https://github.com/akenny430/sir_social_distancing/blob/master/images/affect_sim.png" alt="drawing" width="500"/>
</p>

The social-distancing SIR model is based off of the "long-term awareness" model from this paper: [Systematic biases in disease forecasting – The role of behavior change](https://www.sciencedirect.com/science/article/pii/S1755436518301063), by Ceyhun Eksin, Keith Paarporn, and Joshua Weitz.

The presentation was part of the final project for MAT439: Nonlinear Dynamics, at Franklin & Marshall College.

Some additional notes about this project:
* The main purpose of this was to explore and present an interesting nonlinear model that has already been written about. We *are not* questioning the merits of this model.
* Being a 400-level mathematics class, we do explore some of the mathematical properties of these models. A viewer who is unfamiliar with these topics may have some difficulty following along, but I hope some of the visualizations are helpful.
* The presention was made using LaTeX, the visuals were made using R, and the algorithm (Euler's method) used to implement the model (which was needed to make some of the visuals) were written in C++. Admittedly, using C++ here was probably overkill, as Euler's method is a simple algorithm, but I wanted to get more experience using C++.
* The slides are meant to be viewed as a presentation where the viewer clicks through, as opposed to printing out the slides and viewing them that way (which is a common thing to do). This is because as the slides progress, different colors  are used to emphasize some text and de-emphasize other text. It works well when the slides are viewed as a presentation, but unfortunately does not when they are condensed (using the handout parameter in the beamer class).
