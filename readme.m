% In order to launch the code just do the following steps:
% 
% - run Matlab
% - unzip all files in Matlab current directory (C:/..../Matlab/work is the default directory)
% - type the name of main function ("face3d") on Matlab command window (the white window)
% - now a simple and intuitive GUI should appear
%
%
% FUNCTIONS
%
% Select image:                                  read the input image
%
% Add selected image to database:                the input image is added to database and will be used for training
%
% Database Info:                                 show informations about the images present in database. Images must
%                                                have the same size. If this is not true you have to resize them.
%
% 3D Face Recognition:                           face matching. The selected input image is processed
%
% Delete Database:                               remove database from the current directory
%
% Info:                                          show informations about this software
%
% 
% Source code for Face 3D Recognition System:    how to obtain the complete source code
%
% Exit:                                          quit program
%
% 
% First, select an input image clicking on "Select image".
% Then you can
%   - add this image to database (click on "Add selected image to database"
%   - perform 3d face recognition (click on "3D Face Recognition" button)
%     Note: If you want to perform 3d face recognition database has to include 
%     at least one image.
%  If you choose to add image to database, a positive integer (face ID) is
%  required. This posivive integer is a progressive number which identifies
%  a facial imaage (each ID corresponds to a class).
%
% For example:
%  - run the GUI (type "face3d" on Matlab command window)
%  - delete database (click on "Delete Database")
%  - add "mike1.jpg" to database ---> the ID has to be 1 since Mike is the first
%    person you are adding to database
%  - add "mike2.jpg" to database ---> the ID has to be 1 since you have already
%    added a Mike's image to database
%  - add "paul1.jpg" to database ---> the ID has to be 2 since Paul is the second person
%    you are adding to database
%  - add "cindy1.jpg" to database ---> the ID has to be 3 since Cindy is
%    the third person you are adding to database
%  - add "paul2.jpg" to database ---> the ID has to be 2 once again since
%    you have already added Paul to database
%   
% ... and so on! Very simple, isnt't? :)
% 
% The recognition gives as results the ID of nearest face present in
% database. For example if you select image "paul3.jpg" the ID given SHOULD
% be 2: "it should be" because errors are possible.
% 

% 3D FACE RECOGNITION SYSTEM
%
% Human target recognition has been an active research area
% in the last years, with a major emphasis on automatic
% detection and matching of faces in still images and videos, for
% the purposes of veri?cation and identification. Performance
% of 2D face matching systems depends on their capability of
% being insensitive to critical factors such as facial expressions,
% makeup and aging, but mainly hinges upon extrinsic factors
% such as illumination differences, camera viewpoint and scene
% geometry. However, the inherent limitations of 2D face matching have
% supported the belief that effective recognition of identity should
% be obtained through multi-biometric technologies. In particular,
% the exploitation of the geometry of the anatomical structure of
% the face rather than its appearance, with de?nition of algorithms
% and systems for 3D face matching has been a growing ?eld
% of research in the very recent years. 3D Face recognition  systems  aim to  use the additional 3D data to eliminate some of the
% intrinsic problems associated with 2D recognition systems.  For example, the 3D surface of a
% face is invariant to changes in lighting conditions and hence recognition systems that use this
% data should be, by definition, illumination invariant.  Furthermore, given that it is possible to
% register a number of 3D  models to a base pose, such a system would also be viewpoint
% invariant (although to what degree depends on the completeness of the 3D head model).  In
% addition to the 3D data it remains possible to capture texture information and thus use all the
% available data to guide the recognition process.
%
% Code has been tested on GavabDB Database. GavabDB is a 3D face database.
% It contains 549 three-dimensional images of facial surfaces. These meshes correspond to 61 different individuals
% (45 male and 16 female) having 9 images for each person. The total of the individuals are Caucasian and their age is
% between 18 and 40 years old. Each image is given by a mesh of connected 3D points of the facial surface without texture.
% The database provides systematic variations with respect to the pose and the facial expression.
%
%
% FUNCTIONS
%
% Select image:                                  read the input image
%
% Add selected image to database:                the input image is added to database and will be used for training
%
% Database Info:                                 show informations about the images present in database. Images must
%                                                have the same size. If this is not true you have to resize them.
%
% 3D Face Recognition:                           face matching. The selected input image is processed
%
% Delete Database:                               remove database from the current directory
%
% Info:                                          show informations about this software
%
% Visualization tool:                            visualization utility
%
% Source code for Face 3D Recognition System:    how to obtain the complete source code
%
% Exit:                                          quit program
%
%
%  References:
%
%  Trina Russ, Chris Boehnen and Tanya Peters
%  "3D Face Recognition Using 3D Alignment for PCA"
%  available at http://www.ornl.gov/sci/ees/mssed/isml/pdfs/publications/Boehnen_3D%20Face%20Recognition%20Using%203D%20Alignment%20for%20PCA.pdf
%
%  Sushil Gangwar, Dr. Krishna Kumar, "3D Face Recognition Based On Extracting PCA Methods"
%  available at http://www.ijera.com/papers/Vol2_issue2/DL22693696.pdf
%
%  A. B. Moreno, A. Sánchez, "GavabDB: a 3D Face Database"
%  available at http://gavab.escet.urjc.es/articulos/GavabDB.pdf
%
%  GavabDB 3D Face Database
%  http://gavab.escet.urjc.es/recursos_en.html
%
%  "Eigenfaces for Recognition", Matthew Turk and Alex Pentlad
%  Journal of Cognitive Neuroscience pp.71-86, March 1991
%  Vision and Modeling Group, The Media Laboratory
%  Massachusetts Institute of Technology.
%  This paper is available at http://www.cs.ucsb.edu/~mturk/Papers/jcn.pdf
%  See also Matthew Turk's homepage http://www.cs.ucsb.edu/~mturk/research.htm
%
%
%
% Hamdi Boukamcha
% Sousse
% 4081
% Tunisia
% mobile +201650674269
% email hamdouchhd@hotmail.com
% website http://matlab-recognition-code.com
% 
% 
% Hamdi Boukamcha
% Sousse
% 4081
% Tunisia
% mobile +201650674269
% email hamdouchhd@hotmail.com
% website http://matlab-recognition-code.com
% 
