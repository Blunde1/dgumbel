// Main functions
// Berent Lunde
// 31.03.2020

//#include "../inst/include/dgumbel.hpp"
#include "dgumbel.hpp"

// [[Rcpp::export]]
Rcpp::List adept_eigen_test(double x, double y)
{
    adept::Stack stack;
    
    Tvec<adtype> ad_par(2);
    ad_par << x, y;
    
    stack.new_recording();
    
    adtype res0 = 0.5 * (ad_par.array()*ad_par.array()).sum(); // gradient: x, y
    adtype res = res0/1.0;
    
    res.set_gradient(1.0);
    stack.compute_adjoint();
    
    // Fill result
    Tvec<double> grad(2);
    grad.coeffRef(0) = ad_par.coeff(0).get_gradient();
    grad.coeffRef(1) = ad_par.coeff(1).get_gradient();
    
    //Rcpp::Rcout << "gradient: " << grad << std::endl;
    return Rcpp::List::create(
        Rcpp::Named("fun")  = res.value(),
        Rcpp::Named("grad")  = grad);
    
}