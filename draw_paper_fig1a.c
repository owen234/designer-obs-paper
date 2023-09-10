
#include "utils.c"
#include "histio.c"

void draw_paper_fig1a( bool is_rapgap = true ) {

   char infile[10000] ;
   if ( is_rapgap ) {
      sprintf( infile, "unfold-results-binning-24-12-output_bce_mse_rapgap.root" ) ;
   } else {
      sprintf( infile, "unfold-results-binning-24-12-output_bce_mse_django.root" ) ;
   }

   gStyle -> SetOptStat(0) ;
   gStyle -> SetOptTitle(0) ;

   gDirectory -> Delete("*") ;

   loadHist( infile ) ;

   gDirectory -> ls() ;

   gStyle -> SetPadLeftMargin(0.15) ;
   gStyle -> SetPadRightMargin(0.15) ;
   gStyle -> SetPadBottomMargin(0.15) ;


   TText* tt_title = new TText() ;

   tt_title -> SetTextSize( 0.055 ) ;



   TH2F* h_normalized_response = get_hist2d( "h_normalized_response" ) ;

   h_normalized_response -> SetNdivisions( 505, "x" ) ;
   h_normalized_response -> SetNdivisions( 505, "y" ) ;
   h_normalized_response -> SetXTitle( "NN output, Detector inputs" ) ;
   h_normalized_response -> SetYTitle( "NN output, Particle inputs" ) ;
   h_normalized_response -> SetTitleOffset( 1.3, "x" ) ;
   h_normalized_response -> SetTitleOffset( 1.4, "y" ) ;
   h_normalized_response -> SetTitleSize( 0.055, "x" ) ;
   h_normalized_response -> SetTitleSize( 0.055, "y" ) ;
   h_normalized_response -> SetLabelSize( 0.045, "x" ) ;
   h_normalized_response -> SetLabelSize( 0.045, "y" ) ;

   h_normalized_response -> SetMaximum(0.5) ;


   set_zero_bins_to_epsilon( h_normalized_response ) ;



   TCanvas* can1 = get_canvas( "can1", "can1", 50, 50, 500, 500 ) ;

   can1 -> cd() ;
   can1 -> Clear() ;

   h_normalized_response->Draw("colz") ;

   char title_text[1000] ;
   if ( is_rapgap ) {
      sprintf( title_text, "Response Matrix, Rapgap" ) ;
   } else {
      sprintf( title_text, "Response Matrix, Django" ) ;
   }

   tt_title -> DrawTextNDC( 0.15, 0.92, title_text ) ;


   gSystem -> Exec( "mkdir -p paper-plots" ) ;

   char outfile[1000] ;

   if ( is_rapgap ) {
      sprintf( outfile, "paper-plots/response-matrix-rapgap.pdf" ) ;
   } else {
      sprintf( outfile, "paper-plots/response-matrix-django.pdf" ) ;
   }

   can1 -> SaveAs( outfile ) ;



}







