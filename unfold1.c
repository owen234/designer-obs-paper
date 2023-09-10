

//
//  Following the example of tutorials/unfold/testUnfold1.c
//


#include "histio.c"
#include "utils.c"

#include "tunfold-17.9/TUnfoldDensity.h"

//----------

   void unfold1(
                 const char* input_file = "unfold-hists2-binning-24-12-output_bce_mse_rapgap.root",
                 int rn_seed = 1234, const char* hist_name = "h_sf3_gen_vs_obs",
                 int ngen = 1e5
                 ) {

      printf("\n\n Loading TUnfold shared library.\n\n") ;
      gSystem -> Load( "tunfold-17.9/libunfold.a" ) ;
      printf("\n\n Done.\n\n") ;

      gDirectory -> Delete( "*" ) ;

      loadHist( input_file ) ;

      printf("\n\n") ;
      gDirectory -> ls() ;
      printf("\n\n") ;

      TH2F* h_in_gen_vs_obs = get_hist2d( hist_name ) ;

      TH1* h_obs_source = h_in_gen_vs_obs -> ProjectionX( "h_obs_source" ) ;
      TH1* h_gen_source = h_in_gen_vs_obs -> ProjectionY( "h_gen_source" ) ;

      TH1* h_obs_random = (TH1*) h_obs_source -> Clone( "h_obs_random" ) ;
      h_obs_random->Reset() ;
      gRandom -> SetSeed( rn_seed ) ;
      h_obs_random->FillRandom( h_obs_source, ngen ) ;


      printf("\n\n ----- Creating a TUnfoldDensity instance now.\n") ;
      TUnfoldDensity unfold( h_in_gen_vs_obs, TUnfold::kHistMapOutputVert ) ;
      ///////TUnfoldDensityV17 unfold( h_in_gen_vs_obs, TUnfold::kHistMapOutputVert ) ;
      printf("\n\n ----- Done.\n") ;

      int return_status = unfold.SetInput( h_obs_random ) ;
      printf("  Return status for SetInput: %d\n", return_status ) ;

      //========================================================================
      // the unfolding is done here
      //
      // scan L curve and find best point
      Int_t nScan=30;
      // use automatic L-curve scan: start with taumin=taumax=0.0
      Double_t tauMin=0.0;
      Double_t tauMax=0.0;
      Int_t iBest;
      TSpline *logTauX,*logTauY;
      TGraph *lCurve;

      // if required, report Info messages (for debugging the L-curve scan)
      Int_t oldinfo=gErrorIgnoreLevel;
      gErrorIgnoreLevel=kInfo;

      // this method scans the parameter tau and finds the kink in the L curve
      // finally, the unfolding is done for the best choice of tau
      iBest=unfold.ScanLcurve(nScan,tauMin,tauMax,&lCurve,&logTauX,&logTauY);

      // if required, switch to previous log-level
      gErrorIgnoreLevel=oldinfo;


      //==========================================================================
      // print some results
      //
      std::cout<<"tau="<<unfold.GetTau()<<"\n";
      std::cout<<"chi**2="<<unfold.GetChi2A()<<"+"<<unfold.GetChi2L()
               <<" / "<<unfold.GetNdf()<<"\n";

      //==========================================================================
      // create graphs with one point to visualize the best choice of tau
      //
      Double_t t[1],x[1],y[1];
      logTauX->GetKnot(iBest,t[0],x[0]);
      logTauY->GetKnot(iBest,t[0],y[0]);
      TGraph *bestLcurve=new TGraph(1,x,y);
      TGraph *bestLogTauLogChi2=new TGraph(1,t,x);

 //// TCanvas* can = new TCanvas( "can", "", 50, 50, 1500, 500 ) ;

 //// can -> Divide(3,1) ;


 //// can -> cd(1) ;
 //// lCurve->Draw("alp") ;
 //// bestLcurve->SetMarkerStyle(20) ;
 //// bestLcurve->Draw("p") ;

 //// can -> cd(2) ;
 //// logTauX->Draw() ;

 //// can -> cd(3) ;
 //// logTauY->Draw() ;


      //==========================================================================
      // retrieve results into histograms

      // get unfolded distribution
      TH1 *histMunfold=unfold.GetOutput("Unfolded");

      // get unfolding result, folded back
      TH1 *histMdetFold=unfold.GetFoldedOutput("FoldedBack");

      // get error matrix (input distribution [stat] errors only)
      // TH2D *histEmatData=unfold.GetEmatrix("EmatData");

      // get total error matrix:
      //   migration matrix uncorrelated and correlated systematic errors
      //   added in quadrature to the data statistical errors
      TH2 *histEmatTotal=unfold.GetEmatrixTotal("EmatTotal");

      // create data histogram with the total errors
      int nGen = histMunfold -> GetNbinsX() ;
      float xminGen = histMunfold -> GetXaxis() -> GetXmin() ;
      float xmaxGen = histMunfold -> GetXaxis() -> GetXmax() ;

      TH1D *histTotalError=
         new TH1D("TotalError","TotalError",nGen,xminGen,xmaxGen);
      for(Int_t bin=1;bin<=nGen;bin++) {
        histTotalError->SetBinContent(bin,histMunfold->GetBinContent(bin));
        histTotalError->SetBinError
           (bin,TMath::Sqrt(histEmatTotal->GetBinContent(bin,bin)));
      }

      //-- calculate the correlation coefficients matrix
      TH2* correlation_matrix = (TH2*) histEmatTotal -> Clone( "correlation_matrix" ) ;
      correlation_matrix -> SetTitle( "Correlation coefficients" ) ;

      for ( int xbi=1; xbi<=histEmatTotal->GetNbinsX(); xbi++ ) {
         for ( int ybi=1; ybi<=histEmatTotal->GetNbinsY(); ybi++ ) {

            float rho = 1. ;
            float sigma_x2, sigma_y2 ;

            sigma_x2 = histEmatTotal->GetBinContent( xbi, xbi ) ;
            sigma_y2 = histEmatTotal->GetBinContent( ybi, ybi ) ;
            if ( sigma_x2 > 0 && sigma_y2 > 0 ) {
               rho = histEmatTotal -> GetBinContent( xbi, ybi )  / sqrt( sigma_x2 * sigma_y2 ) ;
            }
            correlation_matrix -> SetBinContent( xbi, ybi, rho ) ;

         } // ybi
      } // xbi

      correlation_matrix -> SetMinimum( -1. ) ;
      correlation_matrix -> SetMinimum( -1. ) ;


      // get global correlation coefficients
      // for this calculation one has to specify whether the
      // underflow/overflow bins are included or not
      // default: include all bins
      // here: exclude underflow and overflow bins
      TH2 *gHistInvEMatrix;
      TH1 *histRhoi=unfold.GetRhoItotal("rho_I",
                                        0, // use default title
                                        0, // all distributions
                                        "*[UO]", // discard underflow and overflow bins on all axes
                                        kTRUE, // use original binning
                                        &gHistInvEMatrix // store inverse of error matrix
                                        );


      TH2F* h_normalized_response = (TH2F*) h_in_gen_vs_obs -> Clone( "h_normalized_response" ) ;
      for ( int ybi=1; ybi<=h_in_gen_vs_obs->GetNbinsY(); ybi++ ) {
         float row_sum = 0. ;
         for ( int xbi=1; xbi<=h_in_gen_vs_obs->GetNbinsX(); xbi++ ) {
            row_sum += h_in_gen_vs_obs -> GetBinContent( xbi, ybi ) ;
         } // xbi
         for ( int xbi=1; xbi<=h_in_gen_vs_obs->GetNbinsX(); xbi++ ) {
            if ( row_sum > 0 ) {
               h_normalized_response -> SetBinContent( xbi, ybi, ( h_in_gen_vs_obs -> GetBinContent( xbi, ybi ) ) / row_sum ) ;
               h_normalized_response -> SetBinError( xbi, ybi, 0. ) ;
            } else {
               h_normalized_response -> SetBinContent( xbi, ybi, 0. ) ;
               h_normalized_response -> SetBinError( xbi, ybi, 0. ) ;
            }
         } // xbi
      } // ybi


      gStyle -> SetOptStat(0) ;

      h_obs_source -> SetLineColor(4) ;
      h_gen_source -> SetLineColor(2) ;

      TH1* h_gen_compare = (TH1*) h_gen_source -> Clone( "h_gen_compare" ) ;
      h_gen_compare -> Scale( ( histMunfold -> Integral() )/( h_gen_source -> Integral() ) ) ;

      TExec* change_hist_palette = new TExec( "change_hist_palette", "Setup2DhistPalette();" );
      TExec* change_cor_palette = new TExec( "change_cor_palette", "SetupCorrelationPalette();" );

      TCanvas* can1 = (TCanvas*) gDirectory -> FindObject( "can1" ) ;
      if ( can1 == 0x0 ) can1 = new TCanvas( "can1", "", 50, 50, 1000, 1000 ) ;
      can1 -> Clear() ;
      can1 -> cd() ;

      can1 -> Divide(2,2) ;


      can1 -> cd(1) ;
      //h_in_gen_vs_obs -> Draw("colz") ;
      h_normalized_response -> Draw("colz") ;
      change_hist_palette -> Draw() ;
      h_normalized_response -> Draw("colz same") ;

      can1 -> cd(2) ;
      histMunfold -> Draw() ;
      h_gen_compare -> Draw("same hist") ;

      can1 -> cd(3) ;
      /////h_obs_source -> Draw("hist") ;

      correlation_matrix->Draw("colz") ;
      change_cor_palette -> Draw() ;
      correlation_matrix->Draw("colz same") ;


      can1 -> cd(4) ;
      h_gen_source -> Draw("hist") ;

      TString ts( input_file ) ;
      ts.ReplaceAll( "hists2", "results" ) ;
      printf("\n Output file: %s\n", ts.Data() ) ;


      saveHist( ts.Data(), "*" ) ;


      /////////can1->SaveAs("test.png");
      /////////can1->SaveAs("test.pdf");

   }













