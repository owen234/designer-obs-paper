
#include "utils.c"
#include "histio.c"

void draw_paper_fig1c( bool is_rapgap = true ) {

   TExec* change_cor_palette = new TExec( "change_cor_palette", "SetupCorrelationPalette();" );

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



   TH2F* h_correlation_matrix = get_hist2d( "correlation_matrix" ) ;

   h_correlation_matrix -> SetNdivisions( 505, "x" ) ;
   h_correlation_matrix -> SetNdivisions( 505, "y" ) ;
   h_correlation_matrix -> SetXTitle( "NN output, Particle inputs" ) ;
   h_correlation_matrix -> SetYTitle( "NN output, Particle inputs" ) ;
   h_correlation_matrix -> SetTitleOffset( 1.3, "x" ) ;
   h_correlation_matrix -> SetTitleOffset( 1.4, "y" ) ;
   h_correlation_matrix -> SetTitleSize( 0.055, "x" ) ;
   h_correlation_matrix -> SetTitleSize( 0.055, "y" ) ;
   h_correlation_matrix -> SetLabelSize( 0.045, "x" ) ;
   h_correlation_matrix -> SetLabelSize( 0.045, "y" ) ;

   h_correlation_matrix -> SetMaximum(1) ;
   h_correlation_matrix -> SetMinimum(-1) ;




   TCanvas* can1 = get_canvas( "can1", "can1", 50, 50, 500, 500 ) ;

   can1 -> cd() ;
   can1 -> Clear() ;

      h_correlation_matrix->Draw("colz") ;
      change_cor_palette -> Draw() ;
      h_correlation_matrix->Draw("colz same") ;
      h_correlation_matrix->Draw("axis same") ;

   char title_text[1000] ;
   if ( is_rapgap ) {
      sprintf( title_text, "Correlation Matrix, Rapgap" ) ;
   } else {
      sprintf( title_text, "Correlation Matrix, Django" ) ;
   }

   tt_title -> DrawTextNDC( 0.15, 0.92, title_text ) ;


   gSystem -> Exec( "mkdir -p paper-plots" ) ;

   char outfile[1000] ;

   if ( is_rapgap ) {
      sprintf( outfile, "paper-plots/correlation-matrix-rapgap.pdf" ) ;
   } else {
      sprintf( outfile, "paper-plots/correlation-matrix-django.pdf" ) ;
   }

   can1 -> SaveAs( outfile ) ;



}







