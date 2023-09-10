

//
//  Following the example of tutorials/unfold/testUnfold1.c
//


#include "histio.c"
#include "utils.c"
#include "draw_obs_in_gen_slices.c"


//----------

   void unfold_generator_syst( const char* hist_name = "h_sf3_gen_vs_obs",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-12-6-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-12-6-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-8-6-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-8-6-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-18-9-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-18-9-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-12-9-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-12-9-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-16-12-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-16-12-output_bce_mse_django.root",
                  //-------
                      const char* input_file_a = "unfold-hists2-binning-24-12-output_bce_mse_rapgap.root",
                      const char* input_file_b = "unfold-hists2-binning-24-12-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-32-12-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-32-12-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-20-6-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-20-6-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-20-8-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-20-8-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-20-10-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-20-10-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-24-10-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-24-10-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-30-15-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-30-15-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-20-15-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-20-15-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-30-22-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-30-22-output_bce_mse_django.root",
                  //-------
                  //  const char* input_file_a = "unfold-hists2-binning-40-30-output_bce_mse_rapgap.root",
                  //  const char* input_file_b = "unfold-hists2-binning-40-30-output_bce_mse_django.root",
                  //-------
                      const char* input_name_a = "Rapgap",
                      const char* input_name_b = "Djangoh",
                      const char* method_name = "DNN",
                      int ngen = 1e5,
                      float diff_max = -1,
                      int rn_seed = 1234
                      ) {

      gSystem -> Exec( "mkdir -p plots" ) ;

      if ( rn_seed < 0 ) {
         long lt = gSystem -> Now() ;
         rn_seed = lt % 10000 ;
      }
      printf("\n\n Setting random seed to %d\n\n", rn_seed ) ;
      TRandom* tran = new TRandom3(rn_seed) ;

      gDirectory -> Delete( "h*" ) ;
      gStyle -> SetPalette( kBird ) ;

      loadHist( input_file_a, input_name_a ) ;
      loadHist( input_file_b, input_name_b ) ;


      printf("\n\n") ;
      gDirectory -> ls() ;
      printf("\n\n") ;

      char hname[1000] ;
      sprintf( hname, "%s_%s", hist_name, input_name_a ) ;
      /////sprintf( hname, "%s_gw_r2d_%s", hist_name, input_name_a ) ;
      TH2F* h_in_gen_vs_obs_a = get_hist2d( hname ) ;

      sprintf( hname, "%s_%s", hist_name, input_name_b ) ;
      TH2F* h_in_gen_vs_obs_b = get_hist2d( hname ) ;


      TH1* h_obs_source_a = h_in_gen_vs_obs_a -> ProjectionX( "h_obs_source_a" ) ;
      TH1* h_gen_source_a = h_in_gen_vs_obs_a -> ProjectionY( "h_gen_source_a" ) ;

      TH1* h_obs_source_b = h_in_gen_vs_obs_b -> ProjectionX( "h_obs_source_b" ) ;
      TH1* h_gen_source_b = h_in_gen_vs_obs_b -> ProjectionY( "h_gen_source_b" ) ;


      TH1* h_obs_random_a = (TH1*) h_obs_source_a -> Clone( "h_obs_random_a" ) ;
      h_obs_random_a->Reset() ;
      //h_obs_random_a->FillRandom( h_obs_source_a, ngen ) ;
      h_obs_random_a->FillRandom( h_obs_source_a, ngen, tran ) ;

      TH1* h_obs_random_b = (TH1*) h_obs_source_b -> Clone( "h_obs_random_b" ) ;
      h_obs_random_b->Reset() ;
      //h_obs_random_b->FillRandom( h_obs_source_b, ngen ) ;
      h_obs_random_b->FillRandom( h_obs_source_b, ngen, tran ) ;




     //-- Add underflows and overflows to fake data!
      float underflow_mean ;
      float overflow_mean ;
      int nbins_obs = h_obs_source_a -> GetNbinsX() ;
      float nobs_source ;
      float nobs_integral ;
      float nobs_underflow ;
      float nobs_overflow ;



      nobs_integral = h_obs_source_a -> Integral() ;
      nobs_underflow = h_obs_source_a -> GetBinContent(0) ;
      nobs_overflow = h_obs_source_a -> GetBinContent( nbins_obs+1 ) ;

      printf("  h_obs_source_a :  integral %9.5f, underflow %9.5f, overflow %9.5f\n", nobs_integral, nobs_underflow, nobs_overflow ) ;

      nobs_source = nobs_integral ;
      nobs_source += nobs_underflow ;
      nobs_source += nobs_overflow ;

      /////underflow_mean = ngen * ( nobs_underflow / nobs_source ) ;
      /////overflow_mean = ngen * ( nobs_overflow / nobs_source ) ;

      underflow_mean = ngen * ( nobs_underflow / nobs_integral ) ; // ngen only fills inside of histogram (integral)
      overflow_mean = ngen * ( nobs_overflow / nobs_integral ) ;

      h_obs_random_a -> SetBinContent( 0, tran->Poisson( underflow_mean ) ) ;
      h_obs_random_a -> SetBinContent( nbins_obs+1, tran->Poisson( overflow_mean ) ) ;



      nobs_integral = h_obs_source_b -> Integral() ;
      nobs_underflow = h_obs_source_b -> GetBinContent(0) ;
      nobs_overflow = h_obs_source_b -> GetBinContent( nbins_obs+1 ) ;

      printf("  h_obs_source_b :  integral %9.5f, underflow %9.5f, overflow %9.5f\n", nobs_integral, nobs_underflow, nobs_overflow ) ;

      nobs_source = nobs_integral ;
      nobs_source += nobs_underflow ;
      nobs_source += nobs_overflow ;


      //////underflow_mean = ngen * ( nobs_underflow / nobs_source ) ;
      //////overflow_mean = ngen * ( nobs_overflow / nobs_source ) ;

      underflow_mean = ngen * ( nobs_underflow / nobs_integral ) ; // ngen only fills inside of histogram (integral)
      overflow_mean = ngen * ( nobs_overflow / nobs_integral ) ;


      h_obs_random_b -> SetBinContent( 0, tran->Poisson( underflow_mean ) ) ;
      h_obs_random_b -> SetBinContent( nbins_obs+1, tran->Poisson( overflow_mean ) ) ;








      TUnfoldDensity unfold_a_with_a( h_in_gen_vs_obs_a, TUnfold::kHistMapOutputVert ) ;
      TUnfoldDensity unfold_a_with_b( h_in_gen_vs_obs_b, TUnfold::kHistMapOutputVert ) ;
      TUnfoldDensity unfold_b_with_a( h_in_gen_vs_obs_a, TUnfold::kHistMapOutputVert ) ;
      TUnfoldDensity unfold_b_with_b( h_in_gen_vs_obs_b, TUnfold::kHistMapOutputVert ) ;

      int return_status ;

      return_status = unfold_a_with_a.SetInput( h_obs_random_a ) ;
      printf("  Return status for SetInput A with A: %d\n", return_status ) ;

      return_status = unfold_a_with_b.SetInput( h_obs_random_a ) ;
      printf("  Return status for SetInput A with B: %d\n", return_status ) ;

      return_status = unfold_b_with_a.SetInput( h_obs_random_b ) ;
      printf("  Return status for SetInput B with A: %d\n", return_status ) ;

      return_status = unfold_b_with_b.SetInput( h_obs_random_b ) ;
      printf("  Return status for SetInput B with B: %d\n", return_status ) ;





      //========================================================================
      // the unfolding is done here
      //
      // scan L curve and find best point
      Int_t nScan=30;
      // use automatic L-curve scan: start with taumin=taumax=0.0
      Double_t tauMin=0.0;
      Double_t tauMax=0.0;
      Int_t iBest;
      TSpline *logTauX_a_with_a,*logTauY_a_with_a;
      TSpline *logTauX_a_with_b,*logTauY_a_with_b;
      TSpline *logTauX_b_with_a,*logTauY_b_with_a;
      TSpline *logTauX_b_with_b,*logTauY_b_with_b;
      TGraph *lCurve_a_with_a;
      TGraph *lCurve_a_with_b;
      TGraph *lCurve_b_with_a;
      TGraph *lCurve_b_with_b;

      // if required, report Info messages (for debugging the L-curve scan)
      Int_t oldinfo=gErrorIgnoreLevel;
      gErrorIgnoreLevel=kInfo;

      // this method scans the parameter tau and finds the kink in the L curve
      // finally, the unfolding is done for the best choice of tau

      printf("\n\n ===== Begin unfolding %s with %s\n", input_name_a, input_name_a ) ;
      iBest=unfold_a_with_a.ScanLcurve( nScan, tauMin, tauMax, &lCurve_a_with_a, &logTauX_a_with_a, &logTauY_a_with_a );

      printf("\n\n ===== Begin unfolding %s with %s\n", input_name_a, input_name_b ) ;
      iBest=unfold_a_with_b.ScanLcurve( nScan, tauMin, tauMax, &lCurve_a_with_b, &logTauX_a_with_b, &logTauY_a_with_b );


      printf("\n\n ===== Begin unfolding %s with %s\n", input_name_b, input_name_a ) ;
      iBest=unfold_b_with_a.ScanLcurve( nScan, tauMin, tauMax, &lCurve_b_with_a, &logTauX_b_with_a, &logTauY_b_with_a );

      printf("\n\n ===== Begin unfolding %s with %s\n", input_name_b, input_name_b ) ;
      iBest=unfold_b_with_b.ScanLcurve( nScan, tauMin, tauMax, &lCurve_b_with_b, &logTauX_b_with_b, &logTauY_b_with_b );


      // if required, switch to previous log-level
      gErrorIgnoreLevel=oldinfo;


      //==========================================================================
      // print some results
      //
      printf("\n\n %11s with %11s : tau= %9.7f ,  chi2= (%9.5f + %9.5f)/%d\n",
         input_name_a, input_name_a, unfold_a_with_a.GetTau(), unfold_a_with_a.GetChi2A(), unfold_a_with_a.GetChi2L(), unfold_a_with_a.GetNdf() ) ;

      printf("\n\n %11s with %11s : tau= %9.7f ,  chi2= (%9.5f + %9.5f)/%d\n",
         input_name_a, input_name_b, unfold_a_with_b.GetTau(), unfold_a_with_b.GetChi2A(), unfold_a_with_b.GetChi2L(), unfold_a_with_b.GetNdf() ) ;

      printf("\n\n %11s with %11s : tau= %9.7f ,  chi2= (%9.5f + %9.5f)/%d\n",
         input_name_b, input_name_a, unfold_b_with_a.GetTau(), unfold_b_with_a.GetChi2A(), unfold_b_with_a.GetChi2L(), unfold_b_with_a.GetNdf() ) ;

      printf("\n\n %11s with %11s : tau= %9.7f ,  chi2= (%9.5f + %9.5f)/%d\n",
         input_name_b, input_name_b, unfold_b_with_b.GetTau(), unfold_b_with_b.GetChi2A(), unfold_b_with_b.GetChi2L(), unfold_b_with_b.GetNdf() ) ;

      printf("\n\n") ;

      //==========================================================================
      // retrieve results into histograms

      // get unfolded distribution
      TH1 *histMunfold_a_with_a = unfold_a_with_a.GetOutput("Unfolded_a_with_a");
      TH1 *histMunfold_a_with_b = unfold_a_with_b.GetOutput("Unfolded_a_with_b");
      TH1 *histMunfold_b_with_a = unfold_b_with_a.GetOutput("Unfolded_b_with_a");
      TH1 *histMunfold_b_with_b = unfold_b_with_b.GetOutput("Unfolded_b_with_b");

      char htitle[1000] ;

      sprintf( htitle, "Unfolded %s with %s", input_name_a, input_name_a ) ;
      histMunfold_a_with_a -> SetTitle( htitle ) ;
      sprintf( htitle, "Unfolded %s with %s", input_name_a, input_name_b ) ;
      histMunfold_a_with_b -> SetTitle( htitle ) ;
      sprintf( htitle, "Unfolded %s with %s", input_name_b, input_name_a ) ;
      histMunfold_b_with_a -> SetTitle( htitle ) ;
      sprintf( htitle, "Unfolded %s with %s", input_name_b, input_name_b ) ;
      histMunfold_b_with_b -> SetTitle( htitle ) ;




      TH1* h_gen_compare_a_with_a = (TH1*) h_gen_source_a -> Clone( "h_gen_compare_a_with_a" ) ;
      h_gen_compare_a_with_a -> Scale( ( histMunfold_a_with_a -> Integral() )/( h_gen_source_a -> Integral() ) ) ;

      TH1* h_gen_compare_a_with_b = (TH1*) h_gen_source_a -> Clone( "h_gen_compare_a_with_b" ) ;
      h_gen_compare_a_with_b -> Scale( ( histMunfold_a_with_b -> Integral() )/( h_gen_source_a -> Integral() ) ) ;


      TH1* h_gen_compare_b_with_a = (TH1*) h_gen_source_b -> Clone( "h_gen_compare_b_with_a" ) ;
      h_gen_compare_b_with_a -> Scale( ( histMunfold_b_with_a -> Integral() )/( h_gen_source_b -> Integral() ) ) ;

      TH1* h_gen_compare_b_with_b = (TH1*) h_gen_source_b -> Clone( "h_gen_compare_b_with_b" ) ;
      h_gen_compare_b_with_b -> Scale( ( histMunfold_b_with_b -> Integral() )/( h_gen_source_b -> Integral() ) ) ;


      h_gen_compare_a_with_a -> SetLineColor(2) ;
      h_gen_compare_a_with_b -> SetLineColor(2) ;
      h_gen_compare_b_with_a -> SetLineColor(2) ;
      h_gen_compare_b_with_b -> SetLineColor(2) ;


      TH1* h_diff_a_with_a = (TH1*) histMunfold_a_with_a -> Clone( "h_diff_a_with_a" ) ;
      TH1* h_diff_a_with_b = (TH1*) histMunfold_a_with_b -> Clone( "h_diff_a_with_b" ) ;
      TH1* h_diff_b_with_a = (TH1*) histMunfold_b_with_a -> Clone( "h_diff_b_with_a" ) ;
      TH1* h_diff_b_with_b = (TH1*) histMunfold_b_with_b -> Clone( "h_diff_b_with_b" ) ;


      TH1* h_unfold_a_with_a_over_a = (TH1*) histMunfold_a_with_a -> Clone( "h_unfold_a_with_a_over_a" ) ;
      TH1* h_unfold_a_with_b_over_a = (TH1*) histMunfold_a_with_b -> Clone( "h_unfold_a_with_b_over_a" ) ;
      TH1* h_unfold_b_with_a_over_a = (TH1*) histMunfold_b_with_a -> Clone( "h_unfold_b_with_a_over_a" ) ;
      TH1* h_unfold_b_with_b_over_a = (TH1*) histMunfold_b_with_b -> Clone( "h_unfold_b_with_b_over_a" ) ;

      TH1* h_unfold_a_with_a_over_b = (TH1*) histMunfold_a_with_a -> Clone( "h_unfold_a_with_a_over_b" ) ;
      TH1* h_unfold_a_with_b_over_b = (TH1*) histMunfold_a_with_b -> Clone( "h_unfold_a_with_b_over_b" ) ;
      TH1* h_unfold_b_with_a_over_b = (TH1*) histMunfold_b_with_a -> Clone( "h_unfold_b_with_a_over_b" ) ;
      TH1* h_unfold_b_with_b_over_b = (TH1*) histMunfold_b_with_b -> Clone( "h_unfold_b_with_b_over_b" ) ;








      h_diff_a_with_a -> Add( h_gen_compare_a_with_a, -1. ) ;
      h_diff_a_with_b -> Add( h_gen_compare_a_with_b, -1. ) ;
      h_diff_b_with_a -> Add( h_gen_compare_b_with_a, -1. ) ;
      h_diff_b_with_b -> Add( h_gen_compare_b_with_b, -1. ) ;



      //--- normalize by dividing by gen distribution.

      h_diff_a_with_a -> Divide( h_gen_compare_a_with_a ) ;
      h_diff_a_with_b -> Divide( h_gen_compare_a_with_b ) ;
      h_diff_b_with_a -> Divide( h_gen_compare_b_with_a ) ;
      h_diff_b_with_b -> Divide( h_gen_compare_b_with_b ) ;


      h_unfold_a_with_a_over_a -> Divide( h_gen_compare_a_with_a ) ;
      h_unfold_a_with_b_over_a -> Divide( h_gen_compare_a_with_b ) ;
      h_unfold_b_with_a_over_a -> Divide( h_gen_compare_a_with_a ) ;
      h_unfold_b_with_b_over_a -> Divide( h_gen_compare_a_with_b ) ;

      h_unfold_a_with_a_over_b -> Divide( h_gen_compare_b_with_a ) ;
      h_unfold_a_with_b_over_b -> Divide( h_gen_compare_b_with_b ) ;
      h_unfold_b_with_a_over_b -> Divide( h_gen_compare_b_with_a ) ;
      h_unfold_b_with_b_over_b -> Divide( h_gen_compare_b_with_b ) ;


      float max_abs_diff = 0. ;
      if ( h_diff_a_with_a -> GetMaximum() > max_abs_diff ) max_abs_diff = h_diff_a_with_a -> GetMaximum() ;
      if ( h_diff_a_with_b -> GetMaximum() > max_abs_diff ) max_abs_diff = h_diff_a_with_b -> GetMaximum() ;
      if ( h_diff_b_with_a -> GetMaximum() > max_abs_diff ) max_abs_diff = h_diff_b_with_a -> GetMaximum() ;
      if ( h_diff_b_with_b -> GetMaximum() > max_abs_diff ) max_abs_diff = h_diff_b_with_b -> GetMaximum() ;
      if ( fabs( h_diff_a_with_a -> GetMinimum() ) > max_abs_diff ) max_abs_diff = fabs( h_diff_a_with_a -> GetMinimum() ) ;
      if ( fabs( h_diff_a_with_b -> GetMinimum() ) > max_abs_diff ) max_abs_diff = fabs( h_diff_a_with_b -> GetMinimum() ) ;
      if ( fabs( h_diff_b_with_a -> GetMinimum() ) > max_abs_diff ) max_abs_diff = fabs( h_diff_b_with_a -> GetMinimum() ) ;
      if ( fabs( h_diff_b_with_b -> GetMinimum() ) > max_abs_diff ) max_abs_diff = fabs( h_diff_b_with_b -> GetMinimum() ) ;

      if ( diff_max > 0 && diff_max > max_abs_diff ) max_abs_diff = diff_max ;
      //max_abs_diff = diff_max ;


      max_abs_diff = 1.5 ;

      h_diff_a_with_a -> SetMaximum( 1.1 * max_abs_diff ) ;
      h_diff_a_with_b -> SetMaximum( 1.1 * max_abs_diff ) ;
      h_diff_b_with_a -> SetMaximum( 1.1 * max_abs_diff ) ;
      h_diff_b_with_b -> SetMaximum( 1.1 * max_abs_diff ) ;

      h_diff_a_with_a -> SetMinimum( -1.1 * max_abs_diff ) ;
      h_diff_a_with_b -> SetMinimum( -1.1 * max_abs_diff ) ;
      h_diff_b_with_a -> SetMinimum( -1.1 * max_abs_diff ) ;
      h_diff_b_with_b -> SetMinimum( -1.1 * max_abs_diff ) ;



      h_diff_a_with_a -> SetLineColor(2) ;
      h_diff_a_with_b -> SetLineColor(2) ;
      h_diff_b_with_a -> SetLineColor(4) ;
      h_diff_b_with_b -> SetLineColor(4) ;

      h_diff_a_with_a -> SetLineWidth(2) ;
      h_diff_a_with_b -> SetLineWidth(2) ;
      h_diff_b_with_a -> SetLineWidth(2) ;
      h_diff_b_with_b -> SetLineWidth(2) ;


      h_unfold_a_with_a_over_a -> SetMaximum(2.0) ;
      h_unfold_a_with_b_over_a -> SetMaximum(2.0) ;

      h_unfold_a_with_a_over_a -> SetMinimum(0.0) ;
      h_unfold_a_with_b_over_a -> SetMinimum(0.0) ;

      h_unfold_a_with_a_over_a -> SetLineColor(2) ;
      h_unfold_a_with_b_over_a -> SetLineColor(2) ;
      h_unfold_b_with_b_over_b -> SetLineColor(4) ;
      h_unfold_b_with_a_over_b -> SetLineColor(4) ;

      h_unfold_a_with_a_over_a -> SetLineWidth(2) ;
      h_unfold_b_with_b_over_b -> SetLineWidth(2) ;
      h_unfold_a_with_b_over_a -> SetLineWidth(2) ;
      h_unfold_b_with_a_over_b -> SetLineWidth(2) ;


      TLine* tl = new TLine() ;
      tl -> SetLineColor(2) ;

      float lx = 0.25 ;
      float ly = 0.85 ;
      float lw = 0.50 ;
      float lh = 0.15 ;

      float lw2 = 0.30 ;
      float lh2 = 0.15 ;

      char label[100] ;

      TLegend* legend ;


      gStyle -> SetOptStat(0) ;

      TCanvas* can1 = get_canvas( "can1", "", 50, 50, 1100, 1100 ) ;
      can1 -> Clear() ;
      can1 -> cd() ;

      can1 -> Divide(2,3) ;

      int ci(1) ;



      can1 -> cd( ci++ ) ;
      histMunfold_a_with_a -> SetLineWidth(3) ;
      h_gen_compare_a_with_a -> SetTitle("") ;

      h_gen_compare_a_with_a -> SetMaximum( 1.4*( h_gen_compare_a_with_a->GetMaximum() ) ) ;
      h_gen_compare_a_with_a -> Draw("hist") ;
      h_gen_compare_a_with_a -> SetLineWidth(3) ;
      h_gen_compare_a_with_a -> SetLineStyle(2) ;
      histMunfold_a_with_a -> Draw("same") ;

      legend = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      sprintf( label, "%s unfolded with %s", input_name_a, input_name_a ) ;
      legend -> AddEntry( histMunfold_a_with_a, label ) ;
      sprintf( label, "Gen %s", input_name_a ) ;
      legend -> AddEntry( h_gen_compare_a_with_a, label ) ;
      legend -> Draw() ;



      can1 -> cd( ci++ ) ;
      h_gen_compare_a_with_b -> SetMaximum( 1.4*( h_gen_compare_a_with_b->GetMaximum() ) ) ;
      h_gen_compare_a_with_b -> SetTitle("") ;
      h_gen_compare_a_with_b -> Draw("hist") ;
      histMunfold_a_with_b -> SetTitle( method_name ) ;
      histMunfold_a_with_b -> SetLineWidth(3) ;
      histMunfold_a_with_b -> SetMaximum( 1.3*( histMunfold_a_with_b->GetMaximum() ) ) ;
      h_gen_compare_a_with_b -> SetLineWidth(3) ;
      h_gen_compare_a_with_b -> SetLineStyle(2) ;
      h_gen_compare_a_with_b -> Draw("same hist") ;
      histMunfold_a_with_b -> Draw("same") ;

      legend = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      sprintf( label, "%s unfolded with %s", input_name_a, input_name_b ) ;
      legend -> AddEntry( histMunfold_a_with_b, label ) ;
      sprintf( label, "Gen %s", input_name_a ) ;
      legend -> AddEntry( h_gen_compare_a_with_a, label ) ;
      legend -> Draw() ;



      can1 -> cd( ci++ ) ;
      h_gen_compare_b_with_b -> SetLineWidth(3) ;
      h_gen_compare_b_with_b -> SetLineStyle(2) ;
      h_gen_compare_b_with_b -> SetTitle("") ;
      h_gen_compare_b_with_b -> SetMaximum( 1.4*( h_gen_compare_b_with_b->GetMaximum() ) ) ;
      h_gen_compare_b_with_b -> Draw("hist") ;
      histMunfold_b_with_b -> SetLineWidth(3) ;
      histMunfold_b_with_b -> SetTitle( method_name ) ;
      histMunfold_b_with_b -> Draw("same") ;

      legend = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      sprintf( label, "%s unfolded with %s", input_name_b, input_name_b ) ;
      legend -> AddEntry( histMunfold_b_with_b, label ) ;
      sprintf( label, "Gen %s", input_name_b ) ;
      legend -> AddEntry( h_gen_compare_b_with_b, label ) ;
      legend -> Draw() ;



      can1 -> cd( ci++ ) ;
      h_gen_compare_b_with_a -> SetLineWidth(3) ;
      h_gen_compare_b_with_a -> SetLineStyle(2) ;
      h_gen_compare_b_with_a -> SetTitle("") ;
      h_gen_compare_b_with_a -> SetMaximum( 1.4*( h_gen_compare_b_with_a->GetMaximum() ) ) ;
      h_gen_compare_b_with_a -> Draw("hist") ;
      histMunfold_b_with_a -> SetLineWidth(3) ;
      histMunfold_b_with_a -> SetTitle( method_name ) ;
      histMunfold_b_with_a -> Draw("same") ;

      legend = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      sprintf( label, "%s unfolded with %s", input_name_b, input_name_a ) ;
      legend -> AddEntry( histMunfold_b_with_a, label ) ;
      sprintf( label, "Gen %s", input_name_b ) ;
      legend -> AddEntry( h_gen_compare_b_with_a, label ) ;
      legend -> Draw() ;




      ly = 0.15 ;


      can1 -> cd( ci++ ) ;

////  h_diff_a_with_a -> SetTitle("Closure tests") ;
////  h_diff_a_with_a -> Draw("hist") ;
////  h_diff_b_with_b -> Draw("hist same") ;
////  gPad -> SetGridy(1) ;
////  //tl -> DrawLine( h_diff_a_with_a -> GetXaxis() -> GetXmin(), 0.,   h_diff_a_with_a -> GetXaxis() -> GetXmax(), 0. ) ;

      h_unfold_a_with_a_over_a -> SetTitle("Closure tests") ;
      h_unfold_a_with_a_over_a -> Draw("hist") ;
      h_unfold_b_with_b_over_b -> Draw("hist same") ;
      gPad -> SetGridy(1) ;
      //tl -> DrawLine( h_diff_a_with_a -> GetXaxis() -> GetXmin(), 0.,   h_diff_a_with_a -> GetXaxis() -> GetXmax(), 0. ) ;

      legend = new TLegend( lx, ly, lx+lw2, ly+lh2 ) ;
      sprintf( label, "%s", input_name_a ) ;
      legend -> AddEntry( h_diff_a_with_a, label ) ;
      sprintf( label, "%s", input_name_b ) ;
      legend -> AddEntry( h_diff_b_with_b, label ) ;
      legend -> Draw() ;





      can1 -> cd( ci++ ) ;

////  h_diff_b_with_a -> SetTitle("Generator systematic") ;
////  h_diff_b_with_a -> Draw("hist") ;
////  h_diff_a_with_b -> Draw("hist same") ;
////  gPad -> SetGridy(1) ;
////  //tl -> DrawLine( h_diff_b_with_a -> GetXaxis() -> GetXmin(), 0.,   h_diff_b_with_a -> GetXaxis() -> GetXmax(), 0. ) ;

      h_unfold_a_with_b_over_a -> SetTitle("Generator systematic") ;
      h_unfold_a_with_b_over_a -> Draw("hist") ;
      h_unfold_b_with_a_over_b -> Draw("hist same") ;
      gPad -> SetGridy(1) ;
      //tl -> DrawLine( h_diff_b_with_a -> GetXaxis() -> GetXmin(), 0.,   h_diff_b_with_a -> GetXaxis() -> GetXmax(), 0. ) ;


      legend = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      sprintf( label, "%s unfolded with %s", input_name_b, input_name_a ) ;
      legend -> AddEntry( h_diff_b_with_a, label ) ;
      sprintf( label, "%s unfolded with %s", input_name_a, input_name_b ) ;
      legend -> AddEntry( h_diff_a_with_b, label ) ;
      legend -> Draw() ;



      char fname[1000] ;
      sprintf( fname, "plots/generator-syst-%s.png", method_name ) ;
      can1 -> SaveAs( fname ) ;
      sprintf( fname, "plots/generator-syst-%s.pdf", method_name ) ;
      can1 -> SaveAs( fname ) ;


    //==================================


      h_unfold_a_with_a_over_a->SetMaximum(2.5) ;
      h_unfold_a_with_a_over_b->SetMaximum(2.5) ;
      h_unfold_b_with_b_over_b->SetMaximum(2.5) ;
      h_unfold_b_with_b_over_a->SetMaximum(2.5) ;


      h_unfold_a_with_a_over_a->SetMinimum(0.) ;
      h_unfold_a_with_a_over_b->SetMinimum(0.) ;
      h_unfold_b_with_b_over_b->SetMinimum(0.) ;
      h_unfold_b_with_b_over_a->SetMinimum(0.) ;


      h_unfold_a_with_a_over_a->SetTitle("") ;
      h_unfold_a_with_a_over_b->SetTitle("") ;
      h_unfold_b_with_b_over_b->SetTitle("") ;
      h_unfold_b_with_b_over_a->SetTitle("") ;





      h_unfold_a_with_a_over_a->SetLineColor(2) ;
      h_unfold_a_with_a_over_b->SetLineColor(2) ;
      h_unfold_b_with_b_over_b->SetLineColor(4) ;
      h_unfold_b_with_b_over_a->SetLineColor(4) ;

      h_unfold_a_with_a_over_a->SetLineWidth(2) ;
      h_unfold_a_with_a_over_b->SetLineWidth(2) ;
      h_unfold_b_with_b_over_b->SetLineWidth(2) ;
      h_unfold_b_with_b_over_a->SetLineWidth(2) ;


      h_unfold_a_with_a_over_a->SetMarkerStyle(20) ;
      h_unfold_a_with_a_over_b->SetMarkerStyle(20) ;
      h_unfold_b_with_b_over_b->SetMarkerStyle(20) ;
      h_unfold_b_with_b_over_a->SetMarkerStyle(20) ;

      h_unfold_a_with_a_over_a->SetMarkerColor(2) ;
      h_unfold_a_with_a_over_b->SetMarkerColor(2) ;
      h_unfold_b_with_b_over_b->SetMarkerColor(4) ;
      h_unfold_b_with_b_over_a->SetMarkerColor(4) ;



      h_unfold_a_with_b_over_a->SetLineColor(2) ;
      h_unfold_a_with_b_over_b->SetLineColor(2) ;
      h_unfold_b_with_a_over_b->SetLineColor(4) ;
      h_unfold_b_with_a_over_a->SetLineColor(4) ;

      h_unfold_a_with_b_over_a->SetLineWidth(1) ;
      h_unfold_a_with_b_over_b->SetLineWidth(1) ;
      h_unfold_b_with_a_over_b->SetLineWidth(1) ;
      h_unfold_b_with_a_over_a->SetLineWidth(1) ;



      lx = 0.15 ;
      ly = 0.81 ;
      lw = 0.70 ;
      lh = 0.16 ;



      TCanvas* can2 = get_canvas( "can2", "", 1150, 50, 1100, 1100 ) ;
      can2 -> Clear() ;
      can2 -> cd() ;

      can2 -> Divide(2,2) ;

      ci = 1 ;

      tl->SetLineColor(1) ;

      TH1* hp ;


      can2 -> cd( ci++ ) ;
      hp = h_unfold_a_with_a_over_a ;
      h_unfold_a_with_a_over_a->Draw() ;
      tl -> DrawLine( hp -> GetXaxis() -> GetXmin(), 1.,   hp -> GetXaxis() -> GetXmax(), 1. ) ;
      h_unfold_a_with_a_over_a->Draw("same") ;
      h_unfold_a_with_b_over_a->Draw("same hist") ;

      TLegend* l1 = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      l1 -> AddEntry( h_unfold_a_with_a_over_a, "Unfold Rapgap with Rapgap / Rapgap" ) ;
      l1 -> AddEntry( h_unfold_a_with_b_over_a, "Unfold Rapgap with Django / Rapgap" ) ;
      l1 -> Draw() ;


      can2 -> cd( ci++ ) ;
      hp = h_unfold_a_with_a_over_b ;
      h_unfold_a_with_a_over_b->Draw() ;
      tl -> DrawLine( hp -> GetXaxis() -> GetXmin(), 1.,   hp -> GetXaxis() -> GetXmax(), 1. ) ;
      h_unfold_a_with_a_over_b->Draw("same") ;
      h_unfold_a_with_b_over_b->Draw("same hist") ;

      TLegend* l2 = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      l2 -> AddEntry( h_unfold_a_with_a_over_b, "Unfold Rapgap with Rapgap / Django" ) ;
      l2 -> AddEntry( h_unfold_a_with_b_over_b, "Unfold Rapgap with Django / Django" ) ;
      l2 -> Draw() ;



      can2 -> cd( ci++ ) ;
      hp = h_unfold_b_with_b_over_b ;
      h_unfold_b_with_b_over_b->Draw() ;
      tl -> DrawLine( hp -> GetXaxis() -> GetXmin(), 1.,   hp -> GetXaxis() -> GetXmax(), 1. ) ;
      h_unfold_b_with_b_over_b->Draw("same") ;
      h_unfold_b_with_a_over_b->Draw("same hist") ;

      TLegend* l3 = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      l3 -> AddEntry( h_unfold_b_with_b_over_b, "Unfold Django with Django / Django" ) ;
      l3 -> AddEntry( h_unfold_b_with_a_over_b, "Unfold Django with Rapgap / Django" ) ;
      l3 -> Draw() ;



      can2 -> cd( ci++ ) ;
      hp = h_unfold_b_with_b_over_a ;
      h_unfold_b_with_b_over_a->Draw() ;
      tl -> DrawLine( hp -> GetXaxis() -> GetXmin(), 1.,   hp -> GetXaxis() -> GetXmax(), 1. ) ;
      h_unfold_b_with_b_over_a->Draw("same") ;
      h_unfold_b_with_a_over_a->Draw("same hist") ;

      TLegend* l4 = new TLegend( lx, ly, lx+lw, ly+lh ) ;
      l4 -> AddEntry( h_unfold_b_with_b_over_a, "Unfold Django with Django / Rapgap" ) ;
      l4 -> AddEntry( h_unfold_b_with_a_over_a, "Unfold Django with Rapgap / Rapgap" ) ;
      l4 -> Draw() ;









      sprintf( fname, "plots/generator-syst-%s-ratio.png", method_name ) ;
      can2 -> SaveAs( fname ) ;
      sprintf( fname, "plots/generator-syst-%s-ratio.pdf", method_name ) ;
      can2 -> SaveAs( fname ) ;




    //----------------

      saveHist( "hists-unfold-gen-syst.root", "*" ) ;

      printf("\n\n\n") ;
      printf("  Cut and paste for this:\n") ;
      printf(" unfold_generator_syst(\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",%d,%9.2f,%d)",
         hist_name, input_file_a, input_file_b, input_name_a, input_name_b, method_name, ngen, diff_max, rn_seed ) ;
      printf("\n\n\n") ;



   }













