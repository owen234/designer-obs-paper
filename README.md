# designer-obs-paper

This provides the code that was used in the paper "Designing Observables for Measurements with Deep Learning", arXiv:xxxxx.xxxx.  

A neural network is given the classification task of distinguishing two simulations (Rapgap and Django), given event-level features in ep deep inelastic scattering events, using the full simulation of the H1 experiment.  The loss function in the training uses binary cross entropy, for the classification, and the mean squared error difference between the neural network output, given particle-level or the corresponding detector-level input features.  

Here are some brief descriptions of what you can find in this repository

- **nn-training-and-plotting.ipynb** : Jupyter notebook for running the training or reading in the training and then making plots.  Produces a simple root output TTree.
- **fill_hists_for_unfolding2.c,h** : Root code for filling histograms for unfolding.
- **unfold1.c** : Run basic unfolding.
- **unfold_generator_syst.c** : Run unfolding with alternate response matrix and compare.
- **toy-study-regression.ipynb** : Jupyter notebook for the toy regression study.
  
