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
        void ConstructTarget();
        void ConstructBone();
        void ConstructOsteoporoticBone();
        void ConstructArm();
        void ConstructTissue();
        void ConstructArmDivided();

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
        
        G4GenericMessenger * fDetectorMessenger;

        G4int DetColumnNum, DetRowNum, numPores; 
        G4double target_Thickness, innerBoneRadius, outerBoneRadius, boneHeight, poreRadius, xWorld, yWorld, zWorld, 
                 regionMinZ, regionMaxZ, regionMinRadius, regionMaxRadius, r, theta, z, x, y,
                 innerMuscleRadius, outerMuscleRadius, innerGrasaRadius, outerGrasaRadius, innerSkinRadius, outerSkinRadius,
                 fractionMass_VO2, fractionMass_SiO2;
        G4bool isArm, isBone, isOsBone, isPlacas, isArmDivided, check_Overlaps;

        G4Box    * solidWorld, * solidDetector, * solidRadiator;
        G4Tubs   * solidBone, * solidMuscle, * solidGrasa, * solidSkin, * solidBone2, * osteoBone, * healthyBone; 
        G4Sphere * pore;  
        G4VSolid * porousBone; 

        G4LogicalVolume   * logicWorld, * logicRadiator, * logicDetector, * logicBone, * logicMuscle, 
                          * logicGrasa, * logicSkin, * logicOs, * logicHealthy, * fScoringVolume;
        G4VPhysicalVolume * physicalWorld, * physicalRadiator, * physicalDetector, * physBone, * physArm, 
                          * physMuscle, * physGrasa, * physSkin, * physOs, * physHealthy;
                        
        G4ThreeVector targetPos, DetectorPosition, porePosition, position_1, pos_2, Radiator_Position;
        G4RotationMatrix * targetRotation; 

        G4Element  * C, * Al, * N, * O, * V, * Cd, * Te, * W;
        G4Material * SiO2, * H2O, * Aerogel, * worldMaterial, * Aluminum, * Air, * Silicon, * materialTarget, 
                   * CadTel, * vanadiumGlassMix, * amorphousGlass, * Wolframium, * V2O5, 
                   * Fat, * Skin, * Muscle, * Bone, * OsBone, * compactBone;
};

#endif 