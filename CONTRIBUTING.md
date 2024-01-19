Qafar-af and Amharic speech recognition. The first step in the speech recognition process is feature extraction, followed by training the classification or recognition model.
Spectrograms are used for feature extraction, and CNN is used for audio classification. 
The spectrogram of the audio is a 2D image representing the audio, and this image is fed to the CNN model to train the model from the features of the training data. 
The optimized weight and parameters of the trained CNN model are saved in TFLite [9] format. 
TFLite is an open-source framework that offers researchers and developers the opportunity to run deep learning models on smartphones and tablets locally with low latency, efficient runtimes, and accurate inference [9]. 
So, in this thesis, the TFLite model is deployed in the developed Android application. 
The android app developed in this thesis takes the user's voice in streaming mode and recognizes and transmits the commands (classes) to the hardware part of the thesis for the purpose of controlling the wheelchair. 
There are five commands (classes) to control the movement of the wheelchair. Table 1 summarizes the Qafar-af Speech Command (QSC) and Amharic Speech Command (ASC) classes used in this thesis.

Table 1 Speech Commands (labels)
English 	Qafar-af	Amharic
Start	Qembis	ጀምር
Stop	Solis	ቁም
Left	Gurra	ወደ ግራ
Right	Migda	ወደ ቀኝ
Back	Derreh	ወደ ሆላ
