
#include "utils.c"

#include "histio.c"


void draw_response( const char* infile = "unfold-hists2-binning-20-15-output_bce_mse_django.root",  const char* hname = "h_sf3_gen_vs_obs" ) {

   gDirectory -> Delete( "h*" ) ;

   loadHist( infile ) ;

   printf("\n\n") ;
   gDirectory -> ls() ;
   printf("\n\n") ;

   TH2F* h_gen_vs_obs = get_hist2d( hname ) ;


   TH2F* h_normalized_response = (TH2F*) h_gen_vs_obs -> Clone( "h_normalized_response" ) ;
   for ( int ybi=1; ybi<=h_gen_vs_obs->GetNbinsY(); ybi++ ) {
      float row_sum = 0. ;
      for ( int xbi=1; xbi<=h_gen_vs_obs->GetNbinsX(); xbi++ ) {
         row_sum += h_gen_vs_obs -> GetBinContent( xbi, ybi ) ;
      } // xbi
      for ( int xbi=1; xbi<=h_gen_vs_obs->GetNbinsX(); xbi++ ) {
         if ( row_sum > 0 ) {
            h_normalized_response -> SetBinContent( xbi, ybi, ( h_gen_vs_obs -> GetBinContent( xbi, ybi ) ) / row_sum ) ;
            h_normalized_response -> SetBinError( xbi, ybi, 0. ) ;
         } else {
            h_normalized_response -> SetBinContent( xbi, ybi, 0. ) ;
            h_normalized_response -> SetBinError( xbi, ybi, 0. ) ;
         }
      } // xbi
   } // ybi


   gStyle -> SetOptStat(0) ;

   TCanvas* can1 = get_canvas( "can1", "can1", 50, 50, 500, 1200 ) ;
   can1 -> cd() ;
   can1 -> Clear() ;
   can1 -> Divide(1,3) ;

   can1 -> cd(1) ;
   h_normalized_response -> SetMaximum(0.50) ;
   h_normalized_response -> SetXTitle( "NN output (Det. inp.)" ) ;
   h_normalized_response -> SetYTitle( "NN output (Part. inp.)" ) ;
   h_normalized_response -> SetTitle( "Response normalized in bins vertical axis") ;
   h_normalized_response -> Draw("colz") ;


   can1 -> cd(2) ;
   TH1* hobs = h_gen_vs_obs -> ProjectionX("hobs") ;
   hobs -> SetLineColor(4) ;
   hobs -> SetLineWidth(3) ;
   hobs -> SetTitle("Detector-level inputs") ;
   hobs -> SetXTitle( "NN output" ) ;
   hobs -> Draw() ;
   gPad -> SetGridx(1) ;


   can1 -> cd(3) ;
   TH1* hgen = h_gen_vs_obs -> ProjectionY("hgen") ;
   hgen -> SetLineColor(2) ;
   hgen -> SetLineWidth(3) ;
   hgen -> SetTitle("Particle-level inputs") ;
   hgen -> SetXTitle( "NN output" ) ;
   hgen -> Draw() ;
   gPad -> SetGridx(1) ;




}











