# 3d_fluid_simu
ATTENTION CE PROJET N'EST PAS ENCORE FINI !

Ce projet s'inscrit dans mon cursus de licence 3 Informatique à Paris 8 "Projet tutoré" et est encadré par M. Farès Belhadj.

Les bibliothèques OpenGL, glfw, glm et glew sont utilisées.

L'objectif de ce projet est de réalisé une simulation de fluide 3d en OpenGL, ceci en se basant sur l'article "Real-Time Fluid Dynamics for Games" de Jos Stam. Ce dernier décrit comment implémenter une simulation de fluide qui approxime les équations de Navier-Stokes et permet donc un résultat convaincant en temps-réel. Le rendu volumétrique est effectué en dessinant des coupes de cubes qui piochent leurs couleurs dans une texture 3d, l'alpha-blending permettant d'obtenir l'effet de transparence propre à la fumée.

Des améliorations sont en cours. En premier lieu les coupes du cubes ne sont pour l'instant pas orthogonal au regard, ce qui fausse le visuel selon d'où on regarde le cube (cf la vidéo ci-dessous). Aussi, une gestion de la lumière (au moins basique) est prévu pour renforcer l'aspect 3d, ainsi que certaines optimisations pour améliorer les fps. Une version 2d de ce projet est disponible ici : https://github.com/inepsie/fluid_simu.

Une soutenance de ce projet est prévue le 7 juin 2023.

Vidéos de démo du programme :


https://github.com/inepsie/3d_fluid_simu/assets/58478614/ad52841f-d2df-4d66-9e85-6bd855c15850



https://github.com/inepsie/3d_fluid_simu/assets/58478614/ffadedbe-5fb0-4082-8daa-ef63367a195d

