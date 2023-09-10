
#include "utils.c"

#include "histio.c"


void compare_response( const char* infile_a = "unfold-hists2-binning-24-12-output_bce_mse_django.root",
                       const char* infile_b = "unfold-hists2-binning-24-12-output_bce_mse_rapgap.root",
                       const char* hname = "h_sf3_gen_vs_obs",
                       const char* name_a = "Django",
                       const char* name_b = "Rapgap" ) {

   gStyle -> SetPadRightMargin(0.15) ;
   gDirectory -> Delete( "h*" ) ;

   loadHist( infile_a, name_a ) ;
   loadHist( infile_b, name_b ) ;

   printf("\n\n") ;
   gDirectory -> ls() ;
   printf("\n\n") ;

   char full_hname[1000] ;

   sprintf( full_hname, "%s_%s", hname, name_a ) ;
   TH2F* h_gen_vs_obs_a = get_hist2d( full_hname ) ;

   sprintf( full_hname, "%s_%s", hname, name_b ) ;
   ////////sprintf( full_hname, "%s_gw_r2d_%s", hname, name_b ) ;
   TH2F* h_gen_vs_obs_b = get_hist2d( full_hname ) ;


   sprintf( full_hname, "h_normalized_response_%s", name_a ) ;
   TH2F* h_normalized_response_a = (TH2F*) h_gen_vs_obs_a -> Clone( full_hname ) ;

   sprintf( full_hname, "h_normalized_response_%s", name_b ) ;
   TH2F* h_normalized_response_b = (TH2F*) h_gen_vs_obs_b -> Clone( full_hname ) ;







   for ( int ybi=1; ybi<=h_gen_vs_obs_a->GetNbinsY(); ybi++ ) {
      float row_sum_a = 0. ;
      float row_sum_b = 0. ;
      for ( int xbi=1; xbi<=h_gen_vs_obs_a->GetNbinsX(); xbi++ ) {
         row_sum_a += h_gen_vs_obs_a -> GetBinContent( xbi, ybi ) ;
         row_sum_b += h_gen_vs_obs_b -> GetBinContent( xbi, ybi ) ;
      } // xbi
      for ( int xbi=1; xbi<=h_gen_vs_obs_a->GetNbinsX(); xbi++ ) {
         if ( row_sum_a > 0 ) {
            h_normalized_response_a -> SetBinContent( xbi, ybi, ( h_gen_vs_obs_a -> GetBinContent( xbi, ybi ) ) / row_sum_a ) ;
            h_normalized_response_a -> SetBinError( xbi, ybi, 0. ) ;
         } else {
            h_normalized_response_a -> SetBinContent( xbi, ybi, 0. ) ;
            h_normalized_response_a -> SetBinError( xbi, ybi, 0. ) ;
         }
         if ( row_sum_b > 0 ) {
            h_normalized_response_b -> SetBinContent( xbi, ybi, ( h_gen_vs_obs_b -> GetBinContent( xbi, ybi ) ) / row_sum_b ) ;
            h_normalized_response_b -> SetBinError( xbi, ybi, 0. ) ;
         } else {
            h_normalized_response_b -> SetBinContent( xbi, ybi, 0. ) ;
            h_normalized_response_b -> SetBinError( xbi, ybi, 0. ) ;
         }
      } // xbi
   } // ybi

   TH2F* h_normalized_response_diff = (TH2F*) h_normalized_response_a -> Clone( "h_normalized_response_diff" ) ;
   h_normalized_response_diff -> Add( h_normalized_response_b, -1. ) ;

   gStyle -> SetOptStat(0) ;

   TExec* change_hist_palette = new TExec( "change_hist_palette", "Setup2DhistPalette();" );
   TExec* change_cor_palette = new TExec( "change_cor_palette", "SetupCorrelationPalette();" );

   int nby = h_normalized_response_a -> GetNbinsY() ;

   float hpmax ;
   if ( nby <= 9 ) {
      hpmax = 0.5 ;
   } else if ( nby <= 12 ) {
      hpmax = 0.4 ;
   } else {
      hpmax = 0.5 ;
   }


  //---------------------------------------------

   TCanvas* can1 = get_canvas( "can1", "can1", 50, 50, 500, 1200 ) ;
   can1 -> cd() ;
   can1 -> Clear() ;
   can1 -> Divide(1,3) ;

   char label[1000] ;

   can1 -> cd(1) ;
   h_normalized_response_a -> SetMaximum(hpmax) ;
   h_normalized_response_a -> SetXTitle( "NN output (Det. inp.)" ) ;
   h_normalized_response_a -> SetYTitle( "NN output (Part. inp.)" ) ;
   sprintf( label, "Response normalized in bins vertical axis, %s", name_a ) ;
   h_normalized_response_a -> SetTitle( label ) ;
   h_normalized_response_a -> Draw("colz") ;
   change_hist_palette -> Draw() ;
   h_normalized_response_a -> Draw("colz same") ;
   h_normalized_response_a -> Draw("axis same") ;


   can1 -> cd(2) ;
   h_normalized_response_b -> SetMaximum(hpmax) ;
   h_normalized_response_b -> SetXTitle( "NN output (Det. inp.)" ) ;
   h_normalized_response_b -> SetYTitle( "NN output (Part. inp.)" ) ;
   sprintf( label, "Response normalized in bins vertical axis, %s", name_b ) ;
   h_normalized_response_b -> SetTitle( label ) ;
   h_normalized_response_b -> Draw("colz") ;
   change_hist_palette -> Draw() ;
   h_normalized_response_b -> Draw("colz same") ;
   h_normalized_response_b -> Draw("axis same") ;

   can1 -> cd(3) ;
   h_normalized_response_diff -> SetMinimum(-0.10) ;
   h_normalized_response_diff -> SetMaximum(0.10) ;
   h_normalized_response_diff -> SetXTitle( "NN output (Det. inp.)" ) ;
   h_normalized_response_diff -> SetYTitle( "NN output (Part. inp.)" ) ;
   h_normalized_response_diff -> SetTitle( "Response normalized in bins vertical axis, difference") ;
   h_normalized_response_diff -> Draw("colz") ;
   change_cor_palette -> Draw() ;
   h_normalized_response_diff -> Draw("colz same") ;
   h_normalized_response_diff -> Draw("axis same") ;


  //---------------------------------------------



   TCanvas* can2 = get_canvas( "can2", "can2", 550, 50, 1200, 1200 ) ;
   can2 -> cd() ;
   can2 -> Clear() ;

   if ( nby <= 9 ) {
      can2 -> Divide(3,3) ;
   } else if ( nby <= 12 ) {
      can2 -> Divide(3,4) ;
   } else {
      can2 -> Divide(4,4) ;
   }

   for ( int ybi = 1; ybi <= nby; ybi++ ) {

      can2 -> cd( ybi ) ;

      char pname[100] ;

      sprintf( pname, "hp_a_%02d", ybi ) ;
      TH1* hpa = h_normalized_response_a->ProjectionX( pname, ybi, ybi ) ;

      sprintf( pname, "hp_b_%02d", ybi ) ;
      TH1* hpb = h_normalized_response_b->ProjectionX( pname, ybi, ybi ) ;

      hpa -> SetLineColor(4) ;
      hpb -> SetLineColor(2) ;
      hpa -> SetLineWidth(3) ;
      hpb -> SetLineWidth(3) ;
      hpb -> SetLineStyle(2) ;

      hpa -> SetMaximum(hpmax) ;
      hpa -> Draw() ;
      hpb -> Draw( "same" ) ;


   } // ybi


}











