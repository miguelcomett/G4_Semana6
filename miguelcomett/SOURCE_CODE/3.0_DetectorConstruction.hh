#ifndef DetectorConstruction_hh
#define DetectorConstruction_hh

#include "G4SystemOfUnits.hh"
#include "G4VPhysicalVolume.hh"
#include "G4Box.hh"
#include "G4PVPlacement.hh"
#include "G4VUserDetectorConstruction.hh"
#include "G4NistManager.hh"
#include "G4LogicalVolume.hh"
#include "G4GenericMessenger.hh"
#include "G4UnionSolid.hh"

#include "G4UIcmdWithADoubleAndUnit.hh"
#include "G4Material.hh"
#include "G4Tubs.hh"
#include "G4RandomTools.hh"
#include "G4RunManager.hh"
#include "G4SubtractionSolid.hh"
#include "G4VSolid.hh"
#include "G4Sphere.hh"

#include "G4PhysicalVolumeStore.hh"

#include "3.1_DetectorAction.hh"

class MyDetectorConstruction : public G4VUserDetectorConstruction
{
        void ConstructBone();
        void ConstructOsBone();
        void ConstructArm();
        void ConstructTissue();
        void ConstructBoneDivided();

    public:

        MyDetectorConstruction();
        ~MyDetectorConstruction();

        G4LogicalVolume * GetScoringVolume() const {return fScoringVolume;}

        virtual G4VPhysicalVolume * Construct();

        G4Material * GetMaterial() const {return materialTarget;}
	    G4double GetThickness() const {return target_Thickness;}
    
    private:

        virtual void ConstructSDandField();
        void DefineMaterials();
        
        G4int DetColumnNum, DetRowNum, numPores; 
        G4GenericMessenger * fDetectorMessenger;  
        G4double target_Thickness, innerBoneRadius, outerBoneRadius, boneHeight, poreRadius, xWorld, yWorld, zWorld;
        G4bool isArm, isBone, isOsBone, isPlacas, isBoneDivided, check_Overlaps;

        G4Box    * solidWorld, * solidDetector, * solidRadiator;
        G4Tubs   * solidBone, * solidMuscle, * solidGrasa, * solidSkin, * solidBone2, * prueba, * osteoBone, * healthyBone; 
        G4Sphere * pore;  
        G4VSolid * porousBone; 

        G4VPhysicalVolume * physicalWorld, * physicalRadiator, * physicalDetector, * physBone, * physArm, 
                          * physMuscle, * physGrasa, * physSkin, * pruebaPhys, * physOs, * physHealthy;
        G4LogicalVolume   * logicWorld, * logicRadiator, * logicDetector, * logicBone, * logicMuscle, 
                          * logicGrasa, * logicSkin, * pruebaLog, * logicOs, * logicHealthy, * fScoringVolume;
                        
        G4RotationMatrix * targetRotation; 
        G4ThreeVector targetPos;

        G4Element  * C, * Al, * N, * O, * V, * Cd, * Te;
        G4Material * SiO2, * H2O, * Aerogel, * worldMaterial, * Aluminum, * Air, * Silicon, * materialTarget, 
                   * CadTel, * vanadiumGlassMix, * amorphousGlass, * Wolframium, * V2O5,  * E_PbWO4, 
                   * Fat, * Skin, * Muscle, * Bone, * OsBone, * OsBone2, * compactBone;
};

#endif 