#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
DataFrame affect_sim(double s0, double i0, double beta, double gamma, double k, double t) {
  double r0 = beta / gamma;
  NumericVector S(t);
  NumericVector I(t);
  NumericVector R(t);
  S[0] = s0;
  I[0] = i0;
  R[0] = 0;
  for (int i = 1; i < t; i++) {
    S[i] = S[i - 1] - 0.01*beta*I[i - 1]*pow(S[i - 1], k + 1);
    I[i] = I[i - 1] + 0.01*gamma*I[i - 1]*(r0*pow(S[i - 1], k + 1) - 1);
    R[i] = R[i - 1] + 0.01*gamma*I[i - 1];
  }
  return DataFrame::create(_["r"]= R);
}
