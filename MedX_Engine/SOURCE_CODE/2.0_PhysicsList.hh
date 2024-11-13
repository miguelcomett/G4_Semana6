#ifndef PHYSICSLISTS_HH
#define PHYSICSLISTS_HH

#include "G4VModularPhysicsList.hh"
#include "G4OpticalPhysics.hh"

#include "G4EmLivermorePhysics.hh"
#include "G4EmStandardPhysics_option1.hh"
#include "G4EmStandardPhysics_option3.hh"
#include "G4EmStandardPhysics_option4.hh"
#include "G4EmStandardPhysics.hh"

extern int arguments; 

class MyPhysicsList : public G4VModularPhysicsList
{
    public:
        MyPhysicsList();
        ~MyPhysicsList();   
};

#endif