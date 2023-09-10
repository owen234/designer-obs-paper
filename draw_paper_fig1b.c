
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

   gStyle -> SetPadLeftMargin(0.20) ;
   gStyle -> SetPadRightMargin(0.05) ;
   gStyle -> SetPadBottomMargin(0.15) ;


   TText* tt_title = new TText() ;

   tt_title -> SetTextSize( 0.055 ) ;



   TH1F* h_unfolded = get_hist( "Unfolded" ) ;
   TH1F* h_gen_compare = get_hist( "h_gen_compare" ) ;

   h_unfolded -> SetNdivisions( 505, "x" ) ;
   h_unfolded -> SetNdivisions( 505, "y" ) ;
   h_unfolded -> SetXTitle( "NN output, Particle inputs" ) ;
   h_unfolded -> SetYTitle( "Events" ) ;
   h_unfolded -> SetTitleOffset( 1.3, "x" ) ;
   h_unfolded -> SetTitleOffset( 1.9, "y" ) ;
   h_unfolded -> SetTitleSize( 0.055, "x" ) ;
   h_unfolded -> SetTitleSize( 0.055, "y" ) ;
   h_unfolded -> SetLabelSize( 0.045, "x" ) ;
   h_unfolded -> SetLabelSize( 0.045, "y" ) ;

   h_unfolded -> SetLineWidth(2) ;
   h_unfolded -> SetMarkerStyle(20) ;
   h_unfolded -> SetMarkerSize(0.7) ;
   h_gen_compare -> SetLineWidth(2) ;

   float lx = 0.25 ;
   float ly = 0.75 ;
   float lw = 0.25 ;
   float lh = 0.12 ;

   TLegend* tl = new TLegend( lx, ly, lx+lw, ly+lh ) ;

   tl -> AddEntry( h_unfolded, "Unfolded" ) ;
   tl -> AddEntry( h_gen_compare, "True" ) ;



   TCanvas* can1 = get_canvas( "can1", "can1", 50, 50, 500, 500 ) ;

   can1 -> cd() ;
   can1 -> Clear() ;

   h_unfolded->Draw() ;
   h_gen_compare->Draw("same hist") ;
   h_unfolded->Draw("same") ;

   tl -> Draw() ;

   char title_text[1000] ;
   if ( is_rapgap ) {
      sprintf( title_text, "Unfolded distribution, Rapgap" ) ;
   } else {
      sprintf( title_text, "Unfolded distribution, Django" ) ;
   }

   tt_title -> DrawTextNDC( 0.20, 0.92, title_text ) ;


   gSystem -> Exec( "mkdir -p paper-plots" ) ;

   char outfile[1000] ;

   if ( is_rapgap ) {
      sprintf( outfile, "paper-plots/unfolded-distribution-rapgap.pdf" ) ;
   } else {
      sprintf( outfile, "paper-plots/unfolded-distribution-django.pdf" ) ;
   }

   can1 -> SaveAs( outfile ) ;



}







