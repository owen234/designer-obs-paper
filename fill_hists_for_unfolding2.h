//////////////////////////////////////////////////////////
// This class has been automatically generated on
// Tue Aug 15 10:45:53 2023 by ROOT version 6.24/07
// from TChain nnout/
//////////////////////////////////////////////////////////

#ifndef fill_hists_for_unfolding2_h
#define fill_hists_for_unfolding2_h

#include <TROOT.h>
#include <TChain.h>
#include <TFile.h>

// Header file for the classes stored in the TTree if any.

class fill_hists_for_unfolding2 {
public :
   TTree          *fChain;   //!pointer to the analyzed TTree or TChain
   Int_t           fCurrent; //!current Tree number in a TChain

// Fixed size dimensions of array or collections stored in the TTree if any.

   // Declaration of leaf types
   Char_t          has_isr;
   Char_t          has_fsr;
   Float_t         tower_sum_40;
   Long64_t        n_towers_40;
   Float_t         eta_pho_closest_to_ebeam;
   Double_t        e_pho_closest_to_ebeam;
   Float_t         phi_pho_closest_to_ebeam;
   Float_t         obs_x0;
   Float_t         obs_x1;
   Float_t         obs_x2;
   Float_t         obs_x3;
   Float_t         obs_x4;
   Float_t         obs_x5;
   Float_t         obs_x6;
   Float_t         obs_x7;
   Float_t         obs_x8;
   Float_t         obs_y0;
   Float_t         obs_y1;
   Float_t         obs_y2;
   Float_t         obs_y3;
   Float_t         obs_y4;
   Float_t         obs_y5;
   Float_t         obs_y6;
   Float_t         obs_y7;
   Float_t         obs_y8;
   Float_t         obs_Q20;
   Float_t         obs_Q21;
   Float_t         obs_Q22;
   Float_t         obs_Q23;
   Float_t         obs_Q24;
   Float_t         obs_Q25;
   Float_t         obs_Q26;
   Float_t         obs_Q27;
   Float_t         obs_Q28;
   Float_t         from_tlv_gen_Q2;
   Float_t         from_tlv_gen_x;
   Float_t         from_tlv_gen_y;
   Float_t         obs_e_e;
   Float_t         obs_e_pz;
   Float_t         obs_e_pt;
   Float_t         obs_e_phi;
   Float_t         obs_hfs_e;
   Float_t         obs_hfs_pz;
   Float_t         obs_hfs_pt;
   Float_t         obs_hfs_phi;
   Float_t         obs_dphi;
   Float_t         Empz;
   Float_t         obs_e_trk_e;
   Float_t         beam_e_e;
   Float_t         wgt;
   Float_t         gen_e_e;
   Float_t         gen_e_pz;
   Float_t         gen_e_pt;
   Float_t         gen_e_eta;
   Float_t         gen_e_phi;
   Float_t         obs_e_eta;
   Float_t         gen_hfs_e;
   Float_t         gen_hfs_pz;
   Float_t         gen_hfs_pt;
   Float_t         gen_hfs_eta;
   Float_t         gen_hfs_etacut_e;
   Float_t         gen_hfs_etacut_pz;
   Float_t         gen_hfs_etacut_pt;
   Float_t         gen_hfs_etacut_eta;
   Float_t         gen_hfs_etacut_phi;
   Float_t         obs_hfs_eta;
   Float_t         obs_hfs_Empz;
   Float_t         obs_e_Empz;
   Float_t         obs_event_Empz;
   Float_t         rot_pt1;
   Float_t         rot_pt2;
   Float_t         rot_Empz1;
   Float_t         rot_Empz2;
   Float_t         gen_log_x;
   Float_t         gen_log_y;
   Float_t         gen_log_Q2;
   Double_t        e_ecal_over_trk_ratio;
   Double_t        dphi_pho_closest_to_ebeam;
   Bool_t          has_norad;
   Float_t         obs_ptbal;
   Float_t         obs_pzbal;
   Double_t        gen_dphi_etacut;
   Float_t         classifier_output_gen_sf0;
   Float_t         classifier_output_gen_sf1;
   Float_t         classifier_output_gen_sf2;
   Float_t         classifier_output_gen_sf3;
   Float_t         classifier_output_obs_sf0;
   Float_t         classifier_output_obs_sf1;
   Float_t         classifier_output_obs_sf2;
   Float_t         classifier_output_obs_sf3;

   // List of branches
   TBranch        *b_has_isr;   //!
   TBranch        *b_has_fsr;   //!
   TBranch        *b_tower_sum_40;   //!
   TBranch        *b_n_towers_40;   //!
   TBranch        *b_eta_pho_closest_to_ebeam;   //!
   TBranch        *b_e_pho_closest_to_ebeam;   //!
   TBranch        *b_phi_pho_closest_to_ebeam;   //!
   TBranch        *b_obs_x0;   //!
   TBranch        *b_obs_x1;   //!
   TBranch        *b_obs_x2;   //!
   TBranch        *b_obs_x3;   //!
   TBranch        *b_obs_x4;   //!
   TBranch        *b_obs_x5;   //!
   TBranch        *b_obs_x6;   //!
   TBranch        *b_obs_x7;   //!
   TBranch        *b_obs_x8;   //!
   TBranch        *b_obs_y0;   //!
   TBranch        *b_obs_y1;   //!
   TBranch        *b_obs_y2;   //!
   TBranch        *b_obs_y3;   //!
   TBranch        *b_obs_y4;   //!
   TBranch        *b_obs_y5;   //!
   TBranch        *b_obs_y6;   //!
   TBranch        *b_obs_y7;   //!
   TBranch        *b_obs_y8;   //!
   TBranch        *b_obs_Q20;   //!
   TBranch        *b_obs_Q21;   //!
   TBranch        *b_obs_Q22;   //!
   TBranch        *b_obs_Q23;   //!
   TBranch        *b_obs_Q24;   //!
   TBranch        *b_obs_Q25;   //!
   TBranch        *b_obs_Q26;   //!
   TBranch        *b_obs_Q27;   //!
   TBranch        *b_obs_Q28;   //!
   TBranch        *b_from_tlv_gen_Q2;   //!
   TBranch        *b_from_tlv_gen_x;   //!
   TBranch        *b_from_tlv_gen_y;   //!
   TBranch        *b_obs_e_e;   //!
   TBranch        *b_obs_e_pz;   //!
   TBranch        *b_obs_e_pt;   //!
   TBranch        *b_obs_e_phi;   //!
   TBranch        *b_obs_hfs_e;   //!
   TBranch        *b_obs_hfs_pz;   //!
   TBranch        *b_obs_hfs_pt;   //!
   TBranch        *b_obs_hfs_phi;   //!
   TBranch        *b_obs_dphi;   //!
   TBranch        *b_Empz;   //!
   TBranch        *b_obs_e_trk_e;   //!
   TBranch        *b_beam_e_e;   //!
   TBranch        *b_wgt;   //!
   TBranch        *b_gen_e_e;   //!
   TBranch        *b_gen_e_pz;   //!
   TBranch        *b_gen_e_pt;   //!
   TBranch        *b_gen_e_eta;   //!
   TBranch        *b_gen_e_phi;   //!
   TBranch        *b_obs_e_eta;   //!
   TBranch        *b_gen_hfs_e;   //!
   TBranch        *b_gen_hfs_pz;   //!
   TBranch        *b_gen_hfs_pt;   //!
   TBranch        *b_gen_hfs_eta;   //!
   TBranch        *b_gen_hfs_etacut_e;   //!
   TBranch        *b_gen_hfs_etacut_pz;   //!
   TBranch        *b_gen_hfs_etacut_pt;   //!
   TBranch        *b_gen_hfs_etacut_eta;   //!
   TBranch        *b_gen_hfs_etacut_phi;   //!
   TBranch        *b_obs_hfs_eta;   //!
   TBranch        *b_obs_hfs_Empz;   //!
   TBranch        *b_obs_e_Empz;   //!
   TBranch        *b_obs_event_Empz;   //!
   TBranch        *b_rot_pt1;   //!
   TBranch        *b_rot_pt2;   //!
   TBranch        *b_rot_Empz1;   //!
   TBranch        *b_rot_Empz2;   //!
   TBranch        *b_gen_log_x;   //!
   TBranch        *b_gen_log_y;   //!
   TBranch        *b_gen_log_Q2;   //!
   TBranch        *b_e_ecal_over_trk_ratio;   //!
   TBranch        *b_dphi_pho_closest_to_ebeam;   //!
   TBranch        *b_has_norad;   //!
   TBranch        *b_obs_ptbal;   //!
   TBranch        *b_obs_pzbal;   //!
   TBranch        *b_gen_dphi_etacut;   //!
   TBranch        *b_classifier_output_gen_sf0;   //!
   TBranch        *b_classifier_output_gen_sf1;   //!
   TBranch        *b_classifier_output_gen_sf2;   //!
   TBranch        *b_classifier_output_gen_sf3;   //!
   TBranch        *b_classifier_output_obs_sf0;   //!
   TBranch        *b_classifier_output_obs_sf1;   //!
   TBranch        *b_classifier_output_obs_sf2;   //!
   TBranch        *b_classifier_output_obs_sf3;   //!

   fill_hists_for_unfolding2(const char* infile = "output_bce_mse_django.root" );
   virtual ~fill_hists_for_unfolding2();
   virtual Int_t    Cut(Long64_t entry);
   virtual Int_t    GetEntry(Long64_t entry);
   virtual Long64_t LoadTree(Long64_t entry);
   virtual void     Init(TTree *tree);
   virtual void     Loop();
   virtual Bool_t   Notify();
   virtual void     Show(Long64_t entry = -1);

   char filename[1000] ;
};

#endif

#ifdef fill_hists_for_unfolding2_cxx
fill_hists_for_unfolding2::fill_hists_for_unfolding2(const char* infile) : fChain(0) 
{

   sprintf( filename, "%s", infile ) ;

   TChain * chain = new TChain("nnout","");
   chain->Add( infile );

   int nevts = chain -> GetEntries() ;
   printf("\n\n Number of events in %s :  %d\n\n", infile, nevts ) ;
   if ( nevts <= 0 ) {
      printf("\n\n *** No events in tree.  Exiting.\n\n") ;
      gSystem -> Exit(-1) ;
   }

   TTree* tree = chain;

   Init(tree);
}

fill_hists_for_unfolding2::~fill_hists_for_unfolding2()
{
   if (!fChain) return;
   delete fChain->GetCurrentFile();
}

Int_t fill_hists_for_unfolding2::GetEntry(Long64_t entry)
{
// Read contents of entry.
   if (!fChain) return 0;
   return fChain->GetEntry(entry);
}
Long64_t fill_hists_for_unfolding2::LoadTree(Long64_t entry)
{
// Set the environment to read one entry
   if (!fChain) return -5;
   Long64_t centry = fChain->LoadTree(entry);
   if (centry < 0) return centry;
   if (fChain->GetTreeNumber() != fCurrent) {
      fCurrent = fChain->GetTreeNumber();
      Notify();
   }
   return centry;
}

void fill_hists_for_unfolding2::Init(TTree *tree)
{
   // The Init() function is called when the selector needs to initialize
   // a new tree or chain. Typically here the branch addresses and branch
   // pointers of the tree will be set.
   // It is normally not necessary to make changes to the generated
   // code, but the routine can be extended by the user if needed.
   // Init() will be called many times when running on PROOF
   // (once per file to be processed).

   // Set branch addresses and branch pointers
   if (!tree) return;
   fChain = tree;
   fCurrent = -1;
   fChain->SetMakeClass(1);

   fChain->SetBranchAddress("has_isr", &has_isr, &b_has_isr);
   fChain->SetBranchAddress("has_fsr", &has_fsr, &b_has_fsr);
   fChain->SetBranchAddress("tower_sum_40", &tower_sum_40, &b_tower_sum_40);
   fChain->SetBranchAddress("n_towers_40", &n_towers_40, &b_n_towers_40);
   fChain->SetBranchAddress("eta_pho_closest_to_ebeam", &eta_pho_closest_to_ebeam, &b_eta_pho_closest_to_ebeam);
   fChain->SetBranchAddress("e_pho_closest_to_ebeam", &e_pho_closest_to_ebeam, &b_e_pho_closest_to_ebeam);
   fChain->SetBranchAddress("phi_pho_closest_to_ebeam", &phi_pho_closest_to_ebeam, &b_phi_pho_closest_to_ebeam);
   fChain->SetBranchAddress("obs_x0", &obs_x0, &b_obs_x0);
   fChain->SetBranchAddress("obs_x1", &obs_x1, &b_obs_x1);
   fChain->SetBranchAddress("obs_x2", &obs_x2, &b_obs_x2);
   fChain->SetBranchAddress("obs_x3", &obs_x3, &b_obs_x3);
   fChain->SetBranchAddress("obs_x4", &obs_x4, &b_obs_x4);
   fChain->SetBranchAddress("obs_x5", &obs_x5, &b_obs_x5);
   fChain->SetBranchAddress("obs_x6", &obs_x6, &b_obs_x6);
   fChain->SetBranchAddress("obs_x7", &obs_x7, &b_obs_x7);
   fChain->SetBranchAddress("obs_x8", &obs_x8, &b_obs_x8);
   fChain->SetBranchAddress("obs_y0", &obs_y0, &b_obs_y0);
   fChain->SetBranchAddress("obs_y1", &obs_y1, &b_obs_y1);
   fChain->SetBranchAddress("obs_y2", &obs_y2, &b_obs_y2);
   fChain->SetBranchAddress("obs_y3", &obs_y3, &b_obs_y3);
   fChain->SetBranchAddress("obs_y4", &obs_y4, &b_obs_y4);
   fChain->SetBranchAddress("obs_y5", &obs_y5, &b_obs_y5);
   fChain->SetBranchAddress("obs_y6", &obs_y6, &b_obs_y6);
   fChain->SetBranchAddress("obs_y7", &obs_y7, &b_obs_y7);
   fChain->SetBranchAddress("obs_y8", &obs_y8, &b_obs_y8);
   fChain->SetBranchAddress("obs_Q20", &obs_Q20, &b_obs_Q20);
   fChain->SetBranchAddress("obs_Q21", &obs_Q21, &b_obs_Q21);
   fChain->SetBranchAddress("obs_Q22", &obs_Q22, &b_obs_Q22);
   fChain->SetBranchAddress("obs_Q23", &obs_Q23, &b_obs_Q23);
   fChain->SetBranchAddress("obs_Q24", &obs_Q24, &b_obs_Q24);
   fChain->SetBranchAddress("obs_Q25", &obs_Q25, &b_obs_Q25);
   fChain->SetBranchAddress("obs_Q26", &obs_Q26, &b_obs_Q26);
   fChain->SetBranchAddress("obs_Q27", &obs_Q27, &b_obs_Q27);
   fChain->SetBranchAddress("obs_Q28", &obs_Q28, &b_obs_Q28);
   fChain->SetBranchAddress("from_tlv_gen_Q2", &from_tlv_gen_Q2, &b_from_tlv_gen_Q2);
   fChain->SetBranchAddress("from_tlv_gen_x", &from_tlv_gen_x, &b_from_tlv_gen_x);
   fChain->SetBranchAddress("from_tlv_gen_y", &from_tlv_gen_y, &b_from_tlv_gen_y);
   fChain->SetBranchAddress("obs_e_e", &obs_e_e, &b_obs_e_e);
   fChain->SetBranchAddress("obs_e_pz", &obs_e_pz, &b_obs_e_pz);
   fChain->SetBranchAddress("obs_e_pt", &obs_e_pt, &b_obs_e_pt);
   fChain->SetBranchAddress("obs_e_phi", &obs_e_phi, &b_obs_e_phi);
   fChain->SetBranchAddress("obs_hfs_e", &obs_hfs_e, &b_obs_hfs_e);
   fChain->SetBranchAddress("obs_hfs_pz", &obs_hfs_pz, &b_obs_hfs_pz);
   fChain->SetBranchAddress("obs_hfs_pt", &obs_hfs_pt, &b_obs_hfs_pt);
   fChain->SetBranchAddress("obs_hfs_phi", &obs_hfs_phi, &b_obs_hfs_phi);
   fChain->SetBranchAddress("obs_dphi", &obs_dphi, &b_obs_dphi);
   fChain->SetBranchAddress("Empz", &Empz, &b_Empz);
   fChain->SetBranchAddress("obs_e_trk_e", &obs_e_trk_e, &b_obs_e_trk_e);
   fChain->SetBranchAddress("beam_e_e", &beam_e_e, &b_beam_e_e);
   fChain->SetBranchAddress("wgt", &wgt, &b_wgt);
   fChain->SetBranchAddress("gen_e_e", &gen_e_e, &b_gen_e_e);
   fChain->SetBranchAddress("gen_e_pz", &gen_e_pz, &b_gen_e_pz);
   fChain->SetBranchAddress("gen_e_pt", &gen_e_pt, &b_gen_e_pt);
   fChain->SetBranchAddress("gen_e_eta", &gen_e_eta, &b_gen_e_eta);
   fChain->SetBranchAddress("gen_e_phi", &gen_e_phi, &b_gen_e_phi);
   fChain->SetBranchAddress("obs_e_eta", &obs_e_eta, &b_obs_e_eta);
   fChain->SetBranchAddress("gen_hfs_e", &gen_hfs_e, &b_gen_hfs_e);
   fChain->SetBranchAddress("gen_hfs_pz", &gen_hfs_pz, &b_gen_hfs_pz);
   fChain->SetBranchAddress("gen_hfs_pt", &gen_hfs_pt, &b_gen_hfs_pt);
   fChain->SetBranchAddress("gen_hfs_eta", &gen_hfs_eta, &b_gen_hfs_eta);
   fChain->SetBranchAddress("gen_hfs_etacut_e", &gen_hfs_etacut_e, &b_gen_hfs_etacut_e);
   fChain->SetBranchAddress("gen_hfs_etacut_pz", &gen_hfs_etacut_pz, &b_gen_hfs_etacut_pz);
   fChain->SetBranchAddress("gen_hfs_etacut_pt", &gen_hfs_etacut_pt, &b_gen_hfs_etacut_pt);
   fChain->SetBranchAddress("gen_hfs_etacut_eta", &gen_hfs_etacut_eta, &b_gen_hfs_etacut_eta);
   fChain->SetBranchAddress("gen_hfs_etacut_phi", &gen_hfs_etacut_phi, &b_gen_hfs_etacut_phi);
   fChain->SetBranchAddress("obs_hfs_eta", &obs_hfs_eta, &b_obs_hfs_eta);
   fChain->SetBranchAddress("obs_hfs_Empz", &obs_hfs_Empz, &b_obs_hfs_Empz);
   fChain->SetBranchAddress("obs_e_Empz", &obs_e_Empz, &b_obs_e_Empz);
   fChain->SetBranchAddress("obs_event_Empz", &obs_event_Empz, &b_obs_event_Empz);
   fChain->SetBranchAddress("rot_pt1", &rot_pt1, &b_rot_pt1);
   fChain->SetBranchAddress("rot_pt2", &rot_pt2, &b_rot_pt2);
   fChain->SetBranchAddress("rot_Empz1", &rot_Empz1, &b_rot_Empz1);
   fChain->SetBranchAddress("rot_Empz2", &rot_Empz2, &b_rot_Empz2);
   fChain->SetBranchAddress("gen_log_x", &gen_log_x, &b_gen_log_x);
   fChain->SetBranchAddress("gen_log_y", &gen_log_y, &b_gen_log_y);
   fChain->SetBranchAddress("gen_log_Q2", &gen_log_Q2, &b_gen_log_Q2);
   fChain->SetBranchAddress("e_ecal_over_trk_ratio", &e_ecal_over_trk_ratio, &b_e_ecal_over_trk_ratio);
   fChain->SetBranchAddress("dphi_pho_closest_to_ebeam", &dphi_pho_closest_to_ebeam, &b_dphi_pho_closest_to_ebeam);
   fChain->SetBranchAddress("has_norad", &has_norad, &b_has_norad);
   fChain->SetBranchAddress("obs_ptbal", &obs_ptbal, &b_obs_ptbal);
   fChain->SetBranchAddress("obs_pzbal", &obs_pzbal, &b_obs_pzbal);
   fChain->SetBranchAddress("gen_dphi_etacut", &gen_dphi_etacut, &b_gen_dphi_etacut);
   fChain->SetBranchAddress("classifier_output_gen_sf0", &classifier_output_gen_sf0, &b_classifier_output_gen_sf0);
   fChain->SetBranchAddress("classifier_output_gen_sf1", &classifier_output_gen_sf1, &b_classifier_output_gen_sf1);
   fChain->SetBranchAddress("classifier_output_gen_sf2", &classifier_output_gen_sf2, &b_classifier_output_gen_sf2);
   fChain->SetBranchAddress("classifier_output_gen_sf3", &classifier_output_gen_sf3, &b_classifier_output_gen_sf3);
   fChain->SetBranchAddress("classifier_output_obs_sf0", &classifier_output_obs_sf0, &b_classifier_output_obs_sf0);
   fChain->SetBranchAddress("classifier_output_obs_sf1", &classifier_output_obs_sf1, &b_classifier_output_obs_sf1);
   fChain->SetBranchAddress("classifier_output_obs_sf2", &classifier_output_obs_sf2, &b_classifier_output_obs_sf2);
   fChain->SetBranchAddress("classifier_output_obs_sf3", &classifier_output_obs_sf3, &b_classifier_output_obs_sf3);
   Notify();
}

Bool_t fill_hists_for_unfolding2::Notify()
{
   // The Notify() function is called when a new file is opened. This
   // can be either for a new TTree in a TChain or when when a new TTree
   // is started when using PROOF. It is normally not necessary to make changes
   // to the generated code, but the routine can be extended by the
   // user if needed. The return value is currently not used.

   return kTRUE;
}

void fill_hists_for_unfolding2::Show(Long64_t entry)
{
// Print contents of entry.
// If entry is not specified, print current entry
   if (!fChain) return;
   fChain->Show(entry);
}
Int_t fill_hists_for_unfolding2::Cut(Long64_t entry)
{
// This function may be called from Loop.
// returns  1 if entry is accepted.
// returns -1 otherwise.
   return 1;
}
#endif // #ifdef fill_hists_for_unfolding2_cxx
