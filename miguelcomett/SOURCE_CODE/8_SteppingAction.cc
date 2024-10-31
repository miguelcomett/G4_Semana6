#include "8_SteppingAction.hh"

extern int arguments;

MySteppingAction::MySteppingAction(MyEventAction * eventAction) { fEventAction = eventAction; }
MySteppingAction::~MySteppingAction() {}

void MySteppingAction::UserSteppingAction(const G4Step * step)
{
    G4LogicalVolume * Volume = step -> GetPreStepPoint() -> GetTouchableHandle() -> GetVolume() -> GetLogicalVolume();
    const MyDetectorConstruction * detectorConstruction = static_cast < const MyDetectorConstruction *> (G4RunManager::GetRunManager() -> GetUserDetectorConstruction());
    G4LogicalVolume * fScoringVolume = detectorConstruction -> GetScoringVolume();

    if (arguments == 1 || arguments == 2)
    {
        if(Volume != fScoringVolume) { return; }

        G4double EDep = step -> GetTotalEnergyDeposit();
        if (EDep == 0.0) { return; }
        fEventAction -> AddEDep(EDep);
    }

    if (arguments == 3) 
    {
        if(Volume != fScoringVolume) { return; }

        G4StepPoint * endPoint = step -> GetPostStepPoint();
        G4String procName = endPoint -> GetProcessDefinedStep() -> GetProcessName();
        Run * run = static_cast <Run *> (G4RunManager::GetRunManager() -> GetNonConstCurrentRun()); 
        run -> CountProcesses(procName);

        G4RunManager::GetRunManager() -> AbortEvent();  // kill event after first interaction
    }
    
    G4bool noSecondaries = true;
    if (arguments == 4 && noSecondaries)
    {
        // G4cout << "No secondaries" << G4endl;
        const std::vector<const G4Track*>* secondaries = step -> GetSecondaryInCurrentStep();

        for (const auto & secondary : * secondaries)
        {
            G4Track * nonPrimaryTrack = const_cast<G4Track*>(secondary);
            nonPrimaryTrack -> SetTrackStatus(fStopAndKill);
        }

        if(Volume != fScoringVolume) { return; }

        G4double EDep = step -> GetTotalEnergyDeposit();
        if (EDep == 0.0) { return; }
        fEventAction -> AddEDep(EDep);
    }
}