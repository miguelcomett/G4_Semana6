#include "3.0_DetectorConstruction.hh"

MyDetectorConstruction::MyDetectorConstruction()
{
    fDetectorMessenger = new G4GenericMessenger(this, "/myDetector/", "Detector Construction");
    fDetectorMessenger -> DeclareProperty("nColumns", nColumns, "Number of columns");
    fDetectorMessenger -> DeclareProperty("nRows", nRows, "Number of rows");
    fDetectorMessenger -> DeclareProperty("ThicknessTarget", thicknessTarget, "Thickness of the target");

    // fDetectorMessenger -> SetDefaultUnit("nm");
    // fDetectorMessenger -> DeclareProperty("MaterialTarget", materialTarget, "Material of the target");
    // materialTarget = SiO2;

    nColumns = 10;
    nRows    = 10;
    thicknessTarget = .00005 * mm; 
    
    fTargetThickness = 60 * mm;
    outerBoneRadius = 3.0 * cm;
    targetRotation = new G4RotationMatrix(0, 90*deg, 0);

    isArm = true;
    isBone = false;
    isOsBone = false;

    DefineMaterials();
}

MyDetectorConstruction::~MyDetectorConstruction(){}

void MyDetectorConstruction::DefineMaterials()
{
    G4NistManager * nist = G4NistManager::Instance();

    C = nist -> FindOrBuildElement("C");
    N = new G4Element("Nitrogen", "N", 7, 14.01 * g/mole);
    O = new G4Element("Oxygen"  , "O", 8, 16.00 * g/mole);
    V = new G4Element("Vanadium", "V", 23, 50.94 * g/mole);
    Cd = new G4Element("Cadmium", "Cd", 48, 112.41 * g/mole);
    Te = new G4Element("Tellurium", "Te", 52, 127.60 * g/mole);


    worldMaterial = nist -> FindOrBuildMaterial("G4_AIR");
    Air = new G4Material("Air", 0.0000000000000000001*g/cm3, 2);
    Air -> AddElement(N, 0.78);
    Air -> AddElement(O, 0.22);

    SiO2 = new G4Material("SiO2", 2.201*g/cm3, 2); 
    SiO2 -> AddElement(nist -> FindOrBuildElement("Si"), 1);
    SiO2 -> AddElement(nist -> FindOrBuildElement("O"), 2);

    H2O = new G4Material("H2O", 1.000*g/cm3, 2); 
    H2O -> AddElement(nist -> FindOrBuildElement("H"), 2);
    H2O -> AddElement(nist -> FindOrBuildElement("O"), 1);

    Wolframium = new G4Material("Wolframium", 19.25 * g/cm3, 1);
    Wolframium -> AddElement(nist -> FindOrBuildElement("W"), 1);

    Aluminum = new G4Material("Aluminum", 2.70 * g/cm3, 1);
    Aluminum -> AddElement(nist -> FindOrBuildElement("Al"), 1);

    Silicon = new G4Material("Silicon", 2.33 * g/cm3, 1);
    Silicon -> AddElement(nist -> FindOrBuildElement("Si"), 1);
    
    Aerogel = new G4Material("Aerogel", 10.000 * g/cm3, 3);
    Aerogel -> AddMaterial(SiO2, 62.5 * perCent);
    Aerogel -> AddMaterial(H2O , 37.4 * perCent);
    Aerogel -> AddElement (C   , 00.1 * perCent);


    V2O5 = new G4Material("V2O5", 3.36 * g/cm3, 2);
    V2O5 -> AddElement(V, 2);
    V2O5 -> AddElement(O, 5);

    G4Material * amorphousGlass = new G4Material("AmorphousGlass", 2.5 * g / cm3, 2);
    amorphousGlass -> AddElement(nist -> FindOrBuildElement("Si"), 1);
    amorphousGlass -> AddElement(nist -> FindOrBuildElement("O"), 2);

    vanadiumGlassMix = new G4Material("VanadiumGlassMix", 2.7 * g / cm3, 2);
    G4double fractionMass_VO2 = 0.05;
    G4double fractionMass_SiO2 = 1.0 - fractionMass_VO2;
    vanadiumGlassMix -> AddMaterial(V2O5, fractionMass_VO2);
    vanadiumGlassMix -> AddMaterial(amorphousGlass, fractionMass_SiO2);

    CadTel = nist -> FindOrBuildMaterial("G4_CADMIUM_TELLURIDE");

    Bone = nist -> FindOrBuildMaterial("G4_B-100_BONE"); 
    compactBone = nist->FindOrBuildMaterial("G4_BONE_COMPACT_ICRU");
    Fat = nist -> FindOrBuildMaterial("G4_ADIPOSE_TISSUE_ICRP");
    Skin = nist->FindOrBuildMaterial("G4_SKIN_ICRP");
    Muscle = nist->FindOrBuildMaterial("G4_MUSCLE_SKELETAL_ICRP");

    // Configure Lead Tungstate for crystals
    E_PbWO4 = new G4Material("E_PbWO4", 8.28 * g / cm3, 3);
    E_PbWO4->AddElement(nist->FindOrBuildElement("Pb"), 1);
    E_PbWO4->AddElement(nist->FindOrBuildElement("W"), 1);
    E_PbWO4->AddElement(nist->FindOrBuildElement("O"), 4);

    // Configure material for osteoporotic bone
    OsBone = new G4Material("OsteoporoticBone", 1.3 * g / cm3, 8);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_H"), 6.4 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_C"), 27.8 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_N"), 2.7 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_O"), 41 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_Mg"), 0.2 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_P"), 7 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_S"), 0.2 * perCent);
    OsBone->AddMaterial(nist->FindOrBuildMaterial("G4_Ca"), 14.7 * perCent);

    G4double PhotonEnergy[2] = {1.239841939*eV/0.9, 1.239841939*eV/0.2};
    G4double RindexAerogel[2] = {1.1, 1.1};
    G4double RindexWorld[2] = {1.0, 1.0};

    G4MaterialPropertiesTable * AerogelProperties = new G4MaterialPropertiesTable();
    AerogelProperties -> AddProperty("RINDEX", PhotonEnergy, RindexAerogel, 2);
    Aerogel -> SetMaterialPropertiesTable(AerogelProperties);
    
    G4MaterialPropertiesTable * worldMaterialProperties = new G4MaterialPropertiesTable();
    worldMaterialProperties -> AddProperty("RINDEX", PhotonEnergy, RindexWorld, 2);
    worldMaterial -> SetMaterialPropertiesTable(worldMaterialProperties);
}


void MyDetectorConstruction::ConstructSDandField()
{
    MySensitiveDetector * sensitiveDetector = new MySensitiveDetector("sensitiveDetector");
    logicDetector -> SetSensitiveDetector(sensitiveDetector);
}


void MyDetectorConstruction::ConstructOsBone() 
{
    G4double poreRadius = 100 * um;
    pore = new G4Sphere("Pore", 0, poreRadius, 0 * deg, 360 * deg, 0 * deg, 180 * deg);
    porousBone = solidBone;

    for (int i = 1; i < 300; i++) {
        G4double r = G4UniformRand() * outerBoneRadius;
        G4double theta = G4UniformRand() * 360.0 * deg;
        G4double z = G4UniformRand() * fTargetThickness - fTargetThickness / 2;
        G4double x = r * std::cos(theta);
        G4double y = r * std::sin(theta);
        G4ThreeVector porePosition = G4ThreeVector(x, y, z);
        porousBone = new G4SubtractionSolid("PorousBone", porousBone, pore, 0, porePosition);
    }

    logicBone = new G4LogicalVolume(porousBone, OsBone, "PorousBoneLogical");
    physBone = new G4PVPlacement(targetRotation, targetPos, logicBone, "physBone", logicWorld, false, 0);
}


void MyDetectorConstruction::ConstructBone() 
{
    solidBone = new G4Tubs("Bone", 0.0, outerBoneRadius, fTargetThickness / 2.0, 0.0, 360.0 * deg);

    if (isOsBone) {ConstructOsBone();} 
    else 
    {
        logicBone = new G4LogicalVolume(solidBone, compactBone, "LogicBone");
        physBone = new G4PVPlacement(targetRotation, targetPos, logicBone, "physBone", logicWorld, false, 0, true);
    }
}


void MyDetectorConstruction::ConstructArm() 
{
    G4double innerBoneRadius = 0.0;
    G4double innerMuscleRadius = outerBoneRadius;
    G4double outerMuscleRadius = innerMuscleRadius + 2.5 * cm;
    G4double innerGrasaRadius = outerMuscleRadius;
    G4double outerGrasaRadius = innerGrasaRadius + 0.5 * cm;
    G4double innerSkinRadius = outerGrasaRadius;
    G4double outerSkinRadius = innerSkinRadius + 0.15 * cm;

    solidBone   = new G4Tubs("Bone",    innerBoneRadius, outerBoneRadius,       fTargetThickness / 2.0, 0.0, 360.0 * deg);
    solidMuscle = new G4Tubs("Muscle",  innerMuscleRadius, outerMuscleRadius,   fTargetThickness / 2.0, 0.0, 360.0 * deg);
    solidGrasa  = new G4Tubs("Grasa",   innerGrasaRadius, outerGrasaRadius,     fTargetThickness / 2.0, 0.0, 360.0 * deg);
    solidSkin   = new G4Tubs("Skin",    innerSkinRadius, outerSkinRadius,       fTargetThickness / 2.0, 0.0, 360.0 * deg);

    // prueba = new G4Tubs("prueba", 4.0*cm, 5.0*cm, 5.0*cm, 0.0, 160.0 * deg);
    // pruebaLog = new G4LogicalVolume(prueba, compactBone, "pruebaLog");
    // G4ThreeVector x_1(8*cm, 8*cm, 8*cm);
    // pruebaPhys = new G4PVPlacement(targetRotation, x_1, pruebaLog, "pruebaPhys", logicWorld, false, 0, true);

    if (isOsBone) {ConstructOsBone();} 
    else 
    {
        logicBone = new G4LogicalVolume(solidBone, compactBone, "LogicBone");
        physBone = new G4PVPlacement(targetRotation, targetPos, logicBone, "physBone", logicWorld, false, 0, true);
    }

    logicMuscle = new G4LogicalVolume(solidMuscle, Muscle, "LogicMuscle");
    logicGrasa = new G4LogicalVolume(solidGrasa, Fat, "LogicGrasa");
    logicSkin = new G4LogicalVolume(solidSkin, Skin, "LogicSkin");

    physMuscle = new G4PVPlacement(targetRotation, targetPos, logicMuscle, "physMuscle", logicWorld, false, 0, true);
    physGrasa = new G4PVPlacement(targetRotation, targetPos, logicGrasa, "physGrasa", logicWorld, false, 0, true);
    physSkin = new G4PVPlacement(targetRotation, targetPos, logicSkin, "physSkin", logicWorld, false, 0, true);
}

G4VPhysicalVolume * MyDetectorConstruction::Construct()
{
    bool check_Overlaps = false;
    materialTarget = Bone;
    
    G4double xWorld = 0.5*m;
    G4double yWorld = 0.5*m;
    G4double zWorld = 0.5*m;

    solidWorld = new G4Box("SolidWorld", xWorld, yWorld, zWorld);
    logicWorld = new G4LogicalVolume(solidWorld, Air, "LogicalWorld");
    physicalWorld = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, 0.0), logicWorld, "PhysicalWorld", 0, false, 0, true);


    if (isArm)  {ConstructArm();} 
    else 
    if (isBone) {ConstructBone();}
    else
    {
        solidRadiator = new G4Box("solidRadiator", 0.4*m, 0.4*m, thicknessTarget/2);
        logicRadiator = new G4LogicalVolume(solidRadiator, materialTarget, "logicalRadiator");
        physicalRadiator = new G4PVPlacement(0, G4ThreeVector(0.0, 0.0, 0.25*m), logicRadiator, "PhysicalRadiator", logicWorld, false, 0, true);
        // -0.48
        fScoringVolume = logicRadiator;
    }


    solidDetector = new G4Box("solidDetector", xWorld/nRows, yWorld/nColumns, 0.01*m);
    logicDetector = new G4LogicalVolume(solidDetector, worldMaterial, "logicalDetector");

    for(G4int i = 0; i < nRows; i++){
        
        for (G4int j = 0; j < nColumns; j++){
            
            physicalDetector 
            = new G4PVPlacement(0, G4ThreeVector(-0.5*m + (i+0.5)*m/nRows, -0.5*m + (j+0.5)*m/nColumns, 0.49*m), 
            logicDetector, "physicalDetector", logicWorld, false, j + i*nColumns, check_Overlaps);
        }
    }

    return physicalWorld;
}