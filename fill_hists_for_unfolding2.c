#define fill_hists_for_unfolding2_cxx
#include "fill_hists_for_unfolding2.h"
#include <TH2.h>
#include <TStyle.h>
#include <TCanvas.h>


#include "histio.c"

#include "draw_response.c"

void fill_hists_for_unfolding2::Loop()
{

   bool verbose = false ;

   if (fChain == 0) return;

   Long64_t nentries = fChain->GetEntries();
   printf("\n\n Ntuple has %lld entries\n\n", nentries ) ;

   gDirectory -> Delete( "h*" ) ;


   float sf0_min = 0.00 ;
   float sf0_max = 1.00 ;

   float sf1_min = 0.045 ;
   float sf1_max = 0.847 ;

   float sf2_min = 0.406 ;
   float sf2_max = 0.607 ;

   float sf3_min = 0.465 ;
   //////////float sf3_max = 0.560 ;
   float sf3_max = 0.550 ;

  //---------------
// int nbins_obs = 12 ;
// int nbins_gen = 6 ;
  //---------------
// int nbins_obs = 8 ;
// int nbins_gen = 6 ;
  //---------------
// int nbins_obs = 18 ;
// int nbins_gen =  9 ;
  //---------------
// int nbins_obs = 12 ;
// int nbins_gen =  9 ;
  //---------------
// int nbins_obs = 12 ;
// int nbins_gen =  8 ;
  //---------------
// int nbins_obs = 16 ;
// int nbins_gen = 12 ;
  //---------------
// int nbins_obs = 32 ;
// int nbins_gen = 12 ;
  //---------------
   int nbins_obs = 24 ;
   int nbins_gen = 12 ;
  //---------------
// int nbins_obs = 20 ;
// int nbins_gen = 6 ;
  //---------------
// int nbins_obs = 40 ;
// int nbins_gen = 8 ;
  //---------------
// int nbins_obs = 20 ;
// int nbins_gen = 8 ;
  //---------------
// int nbins_obs = 20 ;
// int nbins_gen = 10 ;
  //---------------
// int nbins_obs = 20 ;
// int nbins_gen = 12 ;
  //---------------
// int nbins_obs = 20 ;
// int nbins_gen = 15 ;
  //---------------
// int nbins_obs = 30 ;
// int nbins_gen = 15 ;
  //---------------
// int nbins_obs = 24 ;
// int nbins_gen = 10 ;
  //---------------
// int nbins_obs = 30 ;
// int nbins_gen = 22 ;
  //---------------
// int nbins_obs = 40 ;
// int nbins_gen = 30 ;
  //---------------

   float hfse_min = 0. ;
   float hfse_max = 400. ;

   float hfseta_min = -1 ;
   float hfseta_max = 4. ;

   TH2F* h_sf0_gen_vs_obs = new TH2F( "h_sf0_gen_vs_obs", "h_sf0_gen_vs_obs", nbins_obs, sf0_min, sf0_max, nbins_gen, sf0_min, sf0_max ) ;
   TH2F* h_sf1_gen_vs_obs = new TH2F( "h_sf1_gen_vs_obs", "h_sf1_gen_vs_obs", nbins_obs, sf1_min, sf1_max, nbins_gen, sf1_min, sf1_max ) ;
   TH2F* h_sf2_gen_vs_obs = new TH2F( "h_sf2_gen_vs_obs", "h_sf2_gen_vs_obs", nbins_obs, sf2_min, sf2_max, nbins_gen, sf2_min, sf2_max ) ;
   TH2F* h_sf3_gen_vs_obs = new TH2F( "h_sf3_gen_vs_obs", "h_sf3_gen_vs_obs", nbins_obs, sf3_min, sf3_max, nbins_gen, sf3_min, sf3_max ) ;

   TH2F* h_hfse_gen_vs_obs = new TH2F( "h_hfse_gen_vs_obs", "h_hfse_gen_vs_obs", nbins_obs,  hfse_min, hfse_max,  nbins_gen,  hfse_min, hfse_max ) ;
   TH2F* h_hfseta_gen_vs_obs = new TH2F( "h_hfseta_gen_vs_obs", "h_hfseta_gen_vs_obs", nbins_obs,  hfseta_min, hfseta_max,  nbins_gen,  hfseta_min, hfseta_max ) ;





   Long64_t nbytes = 0, nb = 0;

   for (Long64_t jentry=0; jentry<nentries;jentry++) {

      int ei = jentry ;

      Long64_t ientry = LoadTree(jentry);
      if (ientry < 0) break;
      nb = fChain->GetEntry(jentry);   nbytes += nb;

      if ( !verbose && ei%100 == 0 ) {
         printf(" --- Event: %7d / %lld    %6.3f\r", ei, nentries, (1.*ei)/(1.*nentries) ) ;
         fflush(stdout) ;
      }

      h_sf0_gen_vs_obs -> Fill( classifier_output_obs_sf0, classifier_output_gen_sf0 ) ;
      h_sf1_gen_vs_obs -> Fill( classifier_output_obs_sf1, classifier_output_gen_sf1 ) ;
      h_sf2_gen_vs_obs -> Fill( classifier_output_obs_sf2, classifier_output_gen_sf2 ) ;
      h_sf3_gen_vs_obs -> Fill( classifier_output_obs_sf3, classifier_output_gen_sf3 ) ;

      h_hfse_gen_vs_obs -> Fill( obs_hfs_e, gen_hfs_etacut_e ) ;

      h_hfseta_gen_vs_obs -> Fill( obs_hfs_eta, gen_hfs_etacut_eta ) ;

   } // jentry


   char outfile[1000] ;
   sprintf( outfile, "unfold-hists2-binning-%d-%d-%s", nbins_obs, nbins_gen, filename ) ;
   saveHist( outfile, "h*" ) ;

   //draw_response( outfile ) ;

}


