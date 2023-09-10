
#include "utils.c"
#include "histio.c"

void draw_paper_fig2a( bool is_rapgap = true, const char* var="nnsf3" ) {

   char infile[10000] ;
   //sprintf( infile, "hists-unfold-gen-syst.root" ) ;
   sprintf( infile, "hists-unfold-gen-syst-%s.root", var ) ;

   gStyle -> SetOptStat(0) ;
   gStyle -> SetOptTitle(0) ;

   gDirectory -> Delete("*") ;

   loadHist( infile ) ;

   gDirectory -> ls() ;

   gStyle -> SetPadLeftMargin(0.15) ;
   gStyle -> SetPadRightMargin(0.05) ;
   gStyle -> SetPadBottomMargin(0.15) ;


   TText* tt_title = new TText() ;

   tt_title -> SetTextSize( 0.055 ) ;

   TH1F* h_unfolded  ;
   TH1F* h_gen_syst  ;
   if ( is_rapgap ) {
      h_unfolded = get_hist( "h_unfold_a_with_a_over_a" ) ;
      h_gen_syst = get_hist( "h_unfold_a_with_b_over_a" ) ;
      h_unfolded -> SetYTitle( "(unfolded Rapgap) / (true Rapgap)" ) ;
   } else {
      h_unfolded = get_hist( "h_unfold_b_with_b_over_b" ) ;
      h_gen_syst = get_hist( "h_unfold_b_with_a_over_b" ) ;
      h_unfolded -> SetYTitle( "(unfolded Django) / (true Django)" ) ;
   }


   printf("\n\n") ;
   int npoints_ave(0) ;
   float sum_abs_syst(0.) ;
   float max_abs_syst(0.) ;
   for ( int bi=1; bi<=h_unfolded->GetNbinsX(); bi++ ) {
      float closure_val = h_unfolded -> GetBinContent( bi ) ;
      float closure_err = h_unfolded -> GetBinError( bi ) ;
      float gen_syst = 1. - h_gen_syst -> GetBinContent( bi ) ;
      float xlow = h_unfolded -> GetXaxis() -> GetBinLowEdge( bi ) ;
      float xhigh = h_unfolded ->  GetXaxis() ->GetBinUpEdge( bi ) ;
      if ( closure_err < 0.07 ) {
         npoints_ave ++ ;
         sum_abs_syst += fabs(gen_syst) ;
         if ( fabs(gen_syst) > max_abs_syst ) max_abs_syst = fabs(gen_syst) ;
      }
      printf("  %2d [%6.3f, %6.3f]:  closure :  %5.2f +/- %5.2f   ,   syst  %5.2f\n", bi, xlow, xhigh, closure_val, closure_err, gen_syst ) ;
   }
   printf("\n  Average syst (%d points):  %6.3f,   max = %6.3f\n", npoints_ave, sum_abs_syst/npoints_ave, max_abs_syst ) ;

   printf("\n\n") ;


   h_unfolded -> SetNdivisions( 505, "x" ) ;
   h_unfolded -> SetNdivisions( 505, "y" ) ;
   if ( strcmp( var, "nnsf3" ) == 0 ) h_unfolded -> SetXTitle( "NN output, Particle inputs" ) ;
   if ( strcmp( var, "hfseta" ) == 0 ) h_unfolded -> SetXTitle( "HFS #eta, Particle level" ) ;
   h_unfolded -> SetTitleOffset( 1.3, "x" ) ;
   h_unfolded -> SetTitleOffset( 1.3, "y" ) ;
   h_unfolded -> SetTitleSize( 0.055, "x" ) ;
   h_unfolded -> SetTitleSize( 0.055, "y" ) ;
   h_unfolded -> SetLabelSize( 0.045, "x" ) ;
   h_unfolded -> SetLabelSize( 0.045, "y" ) ;

   h_unfolded -> SetLineWidth(2) ;
   h_unfolded -> SetMarkerStyle(20) ;
   h_unfolded -> SetMarkerSize(0.7) ;
   h_unfolded -> SetLineColor(1) ;
   h_unfolded -> SetMarkerColor(1) ;
   h_gen_syst -> SetLineWidth(1) ;
   h_gen_syst -> SetLineColor(2) ;

   float lx = 0.25 ;
   float ly = 0.75 ;
   float lw = 0.65 ;
   float lh = 0.12 ;

   TLegend* tl = new TLegend( lx, ly, lx+lw, ly+lh ) ;

   if ( is_rapgap ) {
      tl -> AddEntry( h_unfolded, "Rapgap unfolded with Rapgap" ) ;
      tl -> AddEntry( h_gen_syst, "Rapgap unfolded with Django" ) ;
   } else {
      tl -> AddEntry( h_unfolded, "Django unfolded with Django" ) ;
      tl -> AddEntry( h_gen_syst, "Django unfolded with Rapgap" ) ;
   }


   TLine* tline = new TLine() ;
   tline -> SetLineColor(1) ;

   TCanvas* can1 = get_canvas( "can1", "can1", 50, 50, 500, 500 ) ;

   can1 -> cd() ;
   can1 -> Clear() ;

   h_unfolded->Draw() ;
   h_gen_syst->Draw("same hist") ;
   h_unfolded->Draw("same") ;

   tl -> Draw() ;

   tline -> DrawLine( h_unfolded-> GetXaxis() -> GetXmin(), 1., h_unfolded-> GetXaxis() -> GetXmax(), 1. ) ;

   char title_text[1000] ;
   if ( is_rapgap ) {
      sprintf( title_text, "Closure and model systematic, Rapgap" ) ;
   } else {
      sprintf( title_text, "Closure and model systematic, Django" ) ;
   }

   //tt_title -> DrawTextNDC( 0.15, 0.92, title_text ) ;


   gSystem -> Exec( "mkdir -p paper-plots" ) ;

   char outfile[1000] ;

   if ( is_rapgap ) {
      sprintf( outfile, "paper-plots/generator-syst-rapgap-%s.pdf", var ) ;
   } else {
      sprintf( outfile, "paper-plots/generator-syst-django-%s.pdf", var ) ;
   }

   can1 -> SaveAs( outfile ) ;



}







